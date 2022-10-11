<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Courses extends Model
{
    use HasFactory;
    use Translatable;
    protected $translatable = ['name', 'description','short_description','seo_description'];

    protected $fillable = [
        'name',
        'description',
        'short_description',
        'month',
        'online_price',
        'offline_price',
        'discount',
        'image',
        'meta_title',
        'meta_description',
        'meta_keyword',
        'parent_id',
        'thumbnail',
        'thumbnail_attribute',
        'image_attribute',
        'seo_description',
        'slug','endirim','show_page'
        
    ];



}
