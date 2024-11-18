<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    public $timestamps = false;

    protected $table = 'tb_genre';
    protected $primaryKey = 'genre_name';
    protected $keyType = 'string'; 

    use HasFactory;
}


