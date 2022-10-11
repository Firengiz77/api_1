<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use TCG\Voyager\Traits\Translatable;

class Category extends Model
{
          use HasFactory;
    use Translatable;
    protected $translatable = ['name'];

    protected $fillable = [
        'name',
    ];
}
