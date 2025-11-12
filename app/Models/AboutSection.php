<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class AboutSection extends Model
{
    protected $fillable = [
        'title',
        'description',
        'image1',
        'image2',
        'help_phone',
        'is_active',
    ];

    public function keyPoints(): HasMany
    {
        return $this->hasMany(AboutKeyPoint::class)->orderBy('sort_order');
    }
}
