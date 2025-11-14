<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AboutKeyPoint extends Model
{
    protected $fillable = [
        'about_section_id',
        'title',
        'description',
        'image',
        'sort_order',
        'is_active',
    ];

    public function aboutSection(): BelongsTo
    {
        return $this->belongsTo(AboutSection::class);
    }
}
