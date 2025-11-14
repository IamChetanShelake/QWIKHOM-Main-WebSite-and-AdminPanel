<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProgressStatistic extends Model
{
    protected $fillable = [
        'logo',
        'title',
        'value',
        'type',
        'sort_order',
        'is_active'
    ];

    protected $casts = [
        'value' => 'decimal:2',
        'sort_order' => 'integer',
        'is_active' => 'boolean'
    ];
}
