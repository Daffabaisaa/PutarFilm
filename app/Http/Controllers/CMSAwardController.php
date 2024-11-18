<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Country;
use App\Models\Award;
use Illuminate\Support\Facades\DB; 
use Inertia\Inertia;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class CMSAwardController extends Controller
{
    public function readAwards()
    {
        $awards = Award::all();
        $countries =Country::all(); // Ambil data country

        return Inertia::render('TabelAwards', [
            'award' => $awards,
            'countries' => $countries
        ]);
    }

    public function createAward(Request $request)
    {
        // Validasi data input
        $request->validate([
            'country' => 'required|exists:tb_country,country_name', // Validasi country_name
            'award_year' => 'required|numeric',
            'award_title' => 'required|string|max:255',
        ]);
    
        // Simpan data ke database
        Award::create([
            'country' => $request->country, // Menggunakan country
            'award_year' => $request->award_year,
            'award_title' => $request->award_title,
        ]);
    
        // Redirect kembali ke halaman dengan pesan sukses
        return redirect()->back()->with('success', 'Award berhasil ditambahkan!');
    }
    
    public function deleteAward($id)
    {
        // Cari award berdasarkan ID
        $award = Award::find($id);

        // Jika tidak ditemukan, redirect kembali dengan pesan error
        if (!$award) {
            return redirect()->back()->with('error', 'Award tidak ditemukan!');
        }

        // Hapus award
        $award->delete();

        // Redirect kembali dengan pesan sukses
        return redirect()->back()->with('success', 'Award berhasil dihapus!');
    }

    public function updateAward(Request $request, $id)
    {
        // Validasi data input
        $request->validate([
            'country' => 'required|exists:tb_country,country_name',
            'award_year' => 'required|numeric',
            'award_title' => 'required|string|max:255',
        ]);

        // Cari award berdasarkan ID
        $award = Award::findOrFail($id);

        // Update data
        $award->update([
            'country' => $request->country,
            'award_year' => $request->award_year,
            'award_title' => $request->award_title,
        ]);

        return redirect()->back()->with('success', 'Award berhasil diperbarui!');
    }
}
