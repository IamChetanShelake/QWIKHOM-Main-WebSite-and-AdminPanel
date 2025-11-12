<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class HeroSection extends Model
{
    protected $fillable = [
        'main_title',
        'description',
        'image1',
        'image2',
        'image3',
        'image4',
        'is_active',
    ];
}
