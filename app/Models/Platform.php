<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Platform extends Model
{
    protected $table = 'tb_platform';
    protected $primaryKey = 'name_platform';
    protected $keyType = 'string'; 

    use HasFactory;

    public function films()
    {
        return $this->belongsToMany(Film::class, 'film_platform', 'platform_id', 'film_id');
    }
}