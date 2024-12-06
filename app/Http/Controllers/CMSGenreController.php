<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Genre;
use Illuminate\Support\Facades\DB; 
use Inertia\Inertia;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class CMSGenreController extends Controller
{
    public function readGenres()
{
    $genres = Genre::all();
    return Inertia::render('TabelGenres', [
        'genres' => $genres,
    ]); 
}

public function storeGenre(Request $request)
{
    Log::info('Request received:', $request->all()); // Tambahkan log ini
    // Validasi input
    $request->validate([
        'genre_name' => 'required|string|unique:tb_genre,genre_name'
    ]);

    // Simpan country baru ke database
    DB::table('tb_genre')->insert([
        'genre_name' => $request->input('genre_name')
    ]);

    return response()->json(['message' => 'Genre added successfully'], 201);
}

public function destroyGenre($genre)
{
    $genre = Genre::where('genre_name', $genre)->first();

    if ($genre) {
        $genre->delete();
        return response()->json(['message' => 'Genre berhasil dihapus'], 200);
    }

    return response()->json(['message' => 'Genre tidak ditemukan'], 404);
}

public function updateGenre(Request $request, $genre_name)
{
    $request->validate([
        'new_genre_name' => 'required|string|unique:tb_genre,genre_name'
    ]);

    $genre = Genre::where('genre_name', $genre_name)->first();

    if ($genre) {
        $genre->genre_name = $request->input('new_genre_name');
        $genre->save();

        return response()->json(['message' => 'Genre updated successfully'], 200);
    }

    return response()->json(['message' => 'Genre not found'], 404);
}

}
