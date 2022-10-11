<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SendingMail extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'email', 'phone','courses_id3'];
}
