<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilmPlatform extends Model
{
    use HasFactory;
    protected $table = 'film_platform';

    protected $fillable = ['film_id', 'name_platform'];
    public $timestamps = false;

}
