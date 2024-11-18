<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Country;
use App\Models\Cast;

use Illuminate\Support\Facades\DB; 
use Inertia\Inertia;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class CMSActorController extends Controller
{
    public function getAllActors()
{
    $cast = Cast::all();
    $countries = Country::all(); // Ambil semua negara

    return Inertia::render('TabelActors', [
        'cast' => $cast,
        'countries' => $countries, // Kirim data negara ke Inertia
    ]);
}

public function storeActor(Request $request)
    {
        // Validasi input
        $request->validate([
            'country' => 'required|string|exists:tb_country,country_name', // Pastikan country ada di tabel tb_country
            'name' => 'required|string|max:255',
            'birth' => 'required|date',
            'photo_url' => 'required|string',
        ]);

        // Simpan data aktor ke database
        Cast::create([
            'country' => $request->input('country'),
            'name' => $request->input('name'),
            'birth' => $request->input('birth'),
            'photo_url' => $request->input('photo_url'),
        ]);

        return redirect()->route('actors.index')->with('success', 'Actor added successfully!');
    }

    public function destroyActor($id)
    {
        $actor = Cast::find($id); // Pastikan model Cast sudah sesuai dengan model aktor Anda
        if ($actor) {
            $actor->delete();
            return response()->json(['message' => 'Actor deleted successfully'], 200);
        } else {
            return response()->json(['message' => 'Actor not found'], 404);
        }
    }
    
    public function updateActor(Request $request, $id)
    {
        // Validasi input
        $request->validate([
            'country' => 'required|string|exists:tb_country,country_name', // Pastikan country ada di tabel tb_country
            'name' => 'required|string|max:255',
            'birth' => 'required|date',
            'photo_url' => 'required|string',
        ]);
    
        // Temukan aktor berdasarkan ID
        $actor = Cast::find($id);
    
        if ($actor) {
            // Update data aktor
            $actor->update([
                'country' => $request->input('country'),
                'name' => $request->input('name'),
                'birth' => $request->input('birth'),
                'photo_url' => $request->input('photo_url'),
            ]);
    
            return redirect()->route('actors.index')->with('success', 'Actor updated successfully!');
        } else {
            return redirect()->route('actors.index')->with('error', 'Actor not found.');
        }
    }
}
