<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ContactSubmission extends Model
{
    protected $fillable = [
        'name',
        'email',
        'message',
        'phone',
        'service_type',
        'status',
        'read_at'
    ];

    protected $casts = [
        'read_at' => 'datetime'
    ];

    // Accessor to check if submission is read
    public function getIsReadAttribute()
    {
        return $this->status !== 'new';
    }

    // Mark as read
    public function markAsRead()
    {
        if ($this->status === 'new') {
            $this->update([
                'status' => 'read',
                'read_at' => now()
            ]);
        }
    }

    // Mark as replied
    public function markAsReplied()
    {
        $this->update(['status' => 'replied']);
    }

    // Archive submission
    public function archive()
    {
        $this->update(['status' => 'archived']);
    }
}
