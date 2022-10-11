<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Seo extends Model
{
    use HasFactory;
    use Translatable;
    protected $translatable = ['seo_description'];





}
