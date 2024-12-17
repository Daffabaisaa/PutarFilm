<?php

namespace App\Http\Controllers;

use App\Models\Award;
use App\Models\Cast;
use App\Models\Film;
use Illuminate\Support\Facades\DB; 
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use App\Models\Country;
use App\Models\Genre;
use App\Models\Platform;
use App\Models\Comment;
use App\Models\FilmCast;
use App\Models\FilmGenre;
use App\Models\FilmPlatform;
use App\Models\User;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;


class FilmController extends Controller
{

    public function index(Request $request)
{
    $searchTerm = $request->input('search');
    $selectedGenre = $request->input('genre');
    $selectedPlatform = $request->input('platform');
    $selectedCountry = $request->input('country'); 

    $query = Film::with('genres');

    if ($searchTerm) {
        // Pencarian berdasarkan judul film atau nama aktor
        $query->where('title', 'like', '%' . $searchTerm . '%')
              ->orWhereHas('actors', function ($q) use ($searchTerm) {
                  $q->where('name', 'like', '%' . $searchTerm . '%'); 
              });
    }

    if ($selectedGenre) {
        $query->whereHas('genres', function ($q) use ($selectedGenre) {
            $q->where('tb_genre.genre_name', $selectedGenre);
        });
    }

    if ($selectedPlatform) {
        $query->whereHas('platforms', function ($q) use ($selectedPlatform) {
            $q->where('tb_platform.name_platform', $selectedPlatform);
        });
    }

    if ($selectedCountry) {
        // Karena relasi one-to-many, gunakan where langsung
        $query->where('country', $selectedCountry);
    }

    // Urutkan berdasarkan film yang baru dimasukkan (dari terbaru ke terlama)
    $query->orderBy('created_at', 'desc');

    // Paginasi
    $films = $query->paginate(8);

    // Data lain untuk ditampilkan
    $countrys = Country::all();
    $platforms = Platform::all();
    $genres = Genre::all();

    return inertia::render('Homepage', [
        'title' => "Putar Putar Film Home",
        'description' => "Selamat Datang Bro",
        'films' => $films,
        'countrys' => $countrys,
        'genres' => $genres,
        'platforms' => $platforms,
    ]);
}


    public function show($id)
    {
        $film = Film::with(['genres', 'platforms', 'actors', 'comments.user']) // Memuat relasi user pada komentar
                    ->where('film_id', $id)
                    ->first();
    
        return Inertia::render('HalamanFilm', [
            'film' => $film,
            'user' => Auth::check() ? Auth::user() : null,
            'comments' => $film->comments, // Menambahkan data komentar dengan relasi user
        ]);
    }
    
    

    public function storeComment(Request $request, $id)
    {
        Log::info("Received comment request:", [
            'user_id' => Auth::user()->id, // Ambil user_id dari Auth
            'comment' => $request->input('comment'),
            'rating' => $request->input('rating'),
        ]);

        $request->validate([
            'comment' => 'required|string',
            'rating' => 'required|integer|min:1|max:5',
        ]);

        // Buat komentar baru
        DB::table('tb_comment')->insert([
            'user_id' => Auth::user()->id,
            'film_id' => $id,
            'comment' => $request->input('comment'),
            'rating' => $request->input('rating'),
            'status' => 'unapproved',
        ]);

        return response()->json(['message' => 'Komentar berhasil ditambahkan'], 200);
    }


public function getAllFilms()
{
    // Ambil semua film tanpa paginasi
    $films = Film::all();
    return response()->json($films);
}

public function readComments($filmId)
{
    $film = DB::table('tb_film')->where('film_id', $filmId)->first();

    $comments = DB::table('tb_comment')
        ->where('film_id', $filmId)
        ->where('status', 'approved')
        ->join('users', 'users.id', '=', 'tb_comment.user_id')
        ->select(
            'tb_comment.comment',
            'tb_comment.rating',
            'tb_comment.created_at',
            'users.name as user_name',
            'users.profile_pic_url'
        )
        ->orderBy('tb_comment.created_at', 'desc')
        ->get();

    // Menambahkan default kosong jika comments kosong
    return Inertia::render('HalamanFilm', [
        'film' => $film,
        'comments' => $comments ?? [],
    ]);
}

    public function readInputFilm()
    {
        $film = Film::all();
        $countries = Country::all();
        $genres = Genre::all();
        $platforms = Platform::all();
        $actors = Cast::all();
        $awards = Award::whereNull('film_id')->get();

        return Inertia::render('DramaInput', [
            'film' => $film,
            'countries' => $countries,
            'genres' => $genres,
            'platforms' => $platforms,
            'actors' => $actors,
            'awards' => $awards,
        ]); 
    }

    public function store(Request $request)
    {
        // Validasi input, termasuk `selectedActors`
        $request->validate([
            'title' => 'required|string',
            'altTitle' => 'nullable|string',
            'releaseYear' => 'required|integer',
            'posterUrl' => 'required|url',
            'country' => 'required|string',
            'synopsis' => 'required|string',
            'trailerUrl' => 'required|url',
            'selectedGenres' => 'required|array|max:5',
            'selectedPlatforms' => 'required|array',
            'selectedActors' => 'required|array', // Validasi untuk aktor
            'selectedActors.*' => 'integer|exists:tb_cast,cast_id', // Pastikan aktor ada di tabel actors
        ]);

        // Simpan data film
        $film = Film::create([
            'title' => $request->title,
            'alternative_title' => $request->altTitle,
            'year' => $request->releaseYear,
            'poster_url' => $request->posterUrl,
            'country' => $request->country,
            'synopsis' => $request->synopsis,
            'trailer_url' => $request->trailerUrl,
        ]);

        // Ambil film_id baru-
        $filmId = $film->film_id;

        // Simpan genre ke film_genre berdasarkan genre yang dipilih
        foreach ($request->selectedGenres as $genreName) {
            FilmGenre::create([
                'film_id' => $filmId,
                'genre_name' => $genreName,
            ]);
        }

        // Simpan platform ke film_platform berdasarkan platform yang dipilih
        foreach ($request->selectedPlatforms as $platformName) {
            FilmPlatform::create([
                'film_id' => $filmId,
                'name_platform' => $platformName,
            ]);
        }

        // Simpan aktor ke film_cast berdasarkan aktor yang dipilih
        foreach ($request->selectedActors as $castId) {
            FilmCast::create([
                'film_id' => $filmId,
                'cast_id' => $castId,
            ]);
        }

        // Update film_id untuk award yang dipilih
        if ($request->selectedAward) {
            $award = Award::find($request->selectedAward);
            $award->update(['film_id' => $filmId]);
        }

        return redirect()->back()->with('success', 'Film added successfully');
    }

    public function edit($film_id)
    {
        $film = Film::with(['genres', 'platforms', 'actors'])->findOrFail($film_id);
        $countries = Country::all();
        $genres = Genre::all();
        $platforms = Platform::all();
        $actors = Cast::all();
        $awards = Award::whereNull('film_id')->orWhere('film_id', $film_id)->get();

        return Inertia::render('DramaInput', [
            'film' => $film,
            'countries' => $countries,
            'genres' => $genres,
            'platforms' => $platforms,
            'actors' => $actors,
            'awards' => $awards,
        ]);
    }

    public function update(Request $request, $film_id)
    {
        // Validasi input
        $request->validate([
            'title' => 'required|string|max:255',
            'synopsis' => 'nullable|string',
            'year' => 'nullable|integer',
            'poster' => 'nullable|url',
            'trailer' => 'nullable|url',
            'genres' => 'required|array',
            'platforms' => 'required|array',
            'actors' => 'required|array',
            // Tambahkan validasi lain sesuai kebutuhan
        ]);

        // Update data film utama
        $film = Film::findOrFail($film_id);
        $film->title = $request->title;
        $film->synopsis = $request->synopsis;
        $film->year = $request->year;
        $film->poster = $request->poster;
        $film->trailer = $request->trailer;
        // Update kolom lain sesuai kebutuhan
        $film->save();

        // Mulai proses update relasi dengan menggunakan transaction untuk memastikan konsistensi data
        DB::transaction(function () use ($request, $film_id) {
            
            // Update genres
            // 1. Hapus semua genre lama untuk film ini
            DB::table('film_genre')->where('film_id', $film_id)->delete();

            // 2. Tambahkan genre baru
            foreach ($request->genres as $genre_id) {
                DB::table('film_genre')->insert([
                    'film_id' => $film_id,
                    'genre_id' => $genre_id,
                ]);
            }

            // Update platforms
            // 1. Hapus semua platform lama untuk film ini
            DB::table('film_platform')->where('film_id', $film_id)->delete();

            // 2. Tambahkan platform baru
            foreach ($request->platforms as $platform_id) {
                DB::table('film_platform')->insert([
                    'film_id' => $film_id,
                    'platform_id' => $platform_id,
                ]);
            }

            // Update actors (cast)
            // 1. Hapus semua aktor lama untuk film ini
            DB::table('film_cast')->where('film_id', $film_id)->delete();

            // 2. Tambahkan aktor baru
            foreach ($request->actors as $actor_id) {
                DB::table('film_cast')->insert([
                    'film_id' => $film_id,
                    'cast_id' => $actor_id,
                ]);
            }
        });

        return response()->json([
            'message' => 'Film dan semua relasinya berhasil diperbarui',
            'film' => $film,
        ]);
    }    

    public function filmCms()
    {
        $film = Film::all();

        return Inertia::render('TabelFilm', [
            'film' => $film,
        ]); 
    }

    public function deleteFilm($id)
    {
        $film = Film::find($id);

        if ($film) {
            $film->delete();
            return redirect()->back()->with('message', 'Film deleted successfully');
        }

        return redirect()->back()->with('error', 'Film not found');
    }


}
