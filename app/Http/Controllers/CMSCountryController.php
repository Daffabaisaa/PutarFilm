<?php

namespace App\Http\Controllers;

use App\Models\Country;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 
use Inertia\Inertia;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;



class CMSCountryController extends Controller
{
    public function readCountry()
{
    $countries = Country::all();
    return Inertia::render('TabelCountries', [
        'countries' => $countries,
    ]); 
}

public function storeCountry(Request $request)
{
    // Validasi input
    $request->validate([
        'country_name' => 'required|string|unique:tb_country,country_name'
    ]);

    // Simpan country baru ke database
    DB::table('tb_country')->insert([
        'country_name' => $request->input('country_name')
    ]);

    return response()->json(['message' => 'Country added successfully'], 201);
}

public function destroyCountry($country)
{
    $country = Country::where('country_name', $country)->first();

    if ($country) {
        $country->delete();
        return response()->json(['message' => 'Country berhasil dihapus'], 200);
    }

    return response()->json(['message' => 'Country tidak ditemukan'], 404);
}

public function updateCountry(Request $request, $country_name)
{
    $request->validate([
        'new_country_name' => 'required|string|unique:tb_country,country_name'
    ]);

    $country = Country::where('country_name', $country_name)->first();

    if ($country) {
        $country->country_name = $request->input('new_country_name');
        $country->save();

        return response()->json(['message' => 'Country updated successfully'], 200);
    }

    return response()->json(['message' => 'Country not found'], 404);
}



}
