<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Gallery extends Model
{
    use HasFactory;
    use Translatable;
    protected $translatable = ['attribute'];

    protected $fillable = [
        'image',
        'attribute',
    ];

}
