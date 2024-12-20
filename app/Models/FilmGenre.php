<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilmGenre extends Model
{
    use HasFactory;
    protected $table = 'film_genre';
    public $timestamps = false;
    protected $fillable = ['film_id', 'genre_name'];
}

