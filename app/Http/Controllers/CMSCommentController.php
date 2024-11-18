<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;
use Illuminate\Support\Facades\DB; 
use Inertia\Inertia;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class CMSCommentController extends Controller
{
    public function getAllComments()
{
    $comments = Comment::with(['film:film_id,title', 'user:id,name'])->get();

    return Inertia::render('TabelComments', [
        'comments' => $comments,
    ]);
}

public function updateCommentStatus(Request $request, $id)
{
    $request->validate([
        'status' => 'required|string|max:16|in:approved,unapproved', // Validasi status
    ]);

    $comment = Comment::find($id);
    if (!$comment) {
        return response()->json(['message' => 'Comment not found'], 404);
    }

    try {
        $comment->status = $request->status;
        $comment->save();
        return response()->json(['message' => 'Comment status updated successfully']);
    } catch (\Exception $e) {
        // Log error untuk debugging
        Log::error('Error updating comment status: ' . $e->getMessage());
        return response()->json(['message' => 'Failed to update comment status', 'error' => $e->getMessage()], 500);
    }
}

public function deleteComment($id)
{
    try {
        // Cari komentar berdasarkan ID
        $comment = Comment::find($id);

        if (!$comment) {
            return response()->json(['message' => 'Comment not found'], 404);
        }

        // Hapus komentar
        $comment->delete();

        return response()->json(['message' => 'Comment deleted successfully'], 200);
    } catch (\Exception $e) {
        // Log error untuk debugging
        Log::error('Error deleting comment: ' . $e->getMessage());
        return response()->json(['message' => 'Failed to delete comment', 'error' => $e->getMessage()], 500);
    }
}
}
