<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Programs extends Model
{
    use HasFactory;
    use Translatable;
    protected $translatable = ['months', 'program'];

    protected $fillable = [
        'courses_id',
        'months',
        'program',
    ];

    protected $casts = ['program'=>'array'];


}
