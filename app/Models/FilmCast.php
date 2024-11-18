<?php

// app/Models/FilmCast.php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilmCast extends Model
{
    use HasFactory;

    protected $table = 'film_cast';
    public $timestamps = false;
    protected $fillable = [
        'film_id',
        'cast_id',
    ];
}
