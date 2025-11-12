<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class HowItWork extends Model
{
    protected $fillable = [
        'title',
        'description',
        'order',
        'is_active',
    ];

    protected $casts = [
        'is_active' => 'boolean',
    ];

    // Scope for ordering
    public function scopeOrdered($query)
    {
        return $query->orderBy('order');
    }
}
