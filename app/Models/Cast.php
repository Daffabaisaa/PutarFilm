<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cast extends Model
{
    use HasFactory;

    protected $table = 'tb_cast';
    protected $primaryKey = 'cast_id';

    // Tambahkan atribut yang bisa di-mass assign di sini
    protected $fillable = [
        'country',
        'name',
        'birth',
        'photo_url',
    ];
    
    public $timestamps = false;
}
