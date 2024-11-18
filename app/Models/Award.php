<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Award extends Model
{
    use HasFactory;

    protected $table = 'tb_award';
    protected $primaryKey = 'award_id';

    protected $fillable = ['country', 'award_year', 'award_title', 'film_id'];
    public $timestamps = false;

    public function film()
    {
        return $this->belongsTo(Film::class, 'film_id', 'film_id');
    }
}

