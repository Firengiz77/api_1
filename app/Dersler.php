<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use TCG\Voyager\Traits\Translatable;


class Dersler extends Model
{

       use HasFactory;
    use Translatable;
    protected $translatable = ['dersler'];

    protected $fillable = [
        'courses_id',
        'dersler',
    ];

   protected $casts = [ 'dersler' => 'array'];
    
}
