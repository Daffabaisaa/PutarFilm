<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB; 
use Inertia\Inertia;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class CMSUserController extends Controller
{
    public function readUsers()
{
    $users = User::all();
    return Inertia::render('TabelUsers', [
        'users' => $users,
    ]); 
}

public function update(Request $request, $id)
    {
        $request->validate([
            'user_status' => 'required|string|in:approved,unapproved',
        ]);

        $user = User::findOrFail($id);
        $user->user_status = $request->input('user_status');
        $user->save();

        return response()->json(['message' => 'User status updated successfully.'], 200);
    }


    public function delete($id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return response()->json(['message' => 'User deleted successfully.'], 200);
    }
}
