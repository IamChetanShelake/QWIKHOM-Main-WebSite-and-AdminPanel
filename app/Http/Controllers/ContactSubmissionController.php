<?php

namespace App\Http\Controllers;

use App\Models\ContactSubmission;
use Illuminate\Http\Request;

class ContactSubmissionController extends Controller
{
    public function index(Request $request)
    {
        $query = ContactSubmission::query();

        // Filter by status if provided
        if ($request->has('status') && $request->status !== '') {
            $query->where('status', $request->status);
        }

        // Search functionality
        if ($request->has('search') && $request->search !== '') {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%")
                  ->orWhere('message', 'like', "%{$search}%")
                  ->orWhere('phone', 'like', "%{$search}%");
            });
        }

        $submissions = $query->orderBy('created_at', 'desc')->paginate(15);

        // Get status counts for filter badges
        $statusCounts = [
            'new' => ContactSubmission::where('status', 'new')->count(),
            'read' => ContactSubmission::where('status', 'read')->count(),
            'replied' => ContactSubmission::where('status', 'replied')->count(),
            'archived' => ContactSubmission::where('status', 'archived')->count(),
        ];

        return view('admin.contact-submissions.index', compact('submissions', 'statusCounts', 'request'));
    }

    public function show(ContactSubmission $contactSubmission)
    {
        // Mark as read if it's new
        if ($contactSubmission->status === 'new') {
            $contactSubmission->markAsRead();
        }

        return view('admin.contact-submissions.show', compact('contactSubmission'));
    }

    public function updateStatus(Request $request, ContactSubmission $contactSubmission)
    {
        $request->validate([
            'status' => 'required|in:new,read,replied,archived'
        ]);

        $oldStatus = $contactSubmission->status;
        $contactSubmission->update(['status' => $request->status]);

        // Set read_at timestamp if marking as read
        if ($request->status === 'read' && $oldStatus === 'new') {
            $contactSubmission->update(['read_at' => now()]);
        }

        $message = 'Contact submission status updated successfully!';
        return redirect()->back()->with('success', $message);
    }

    public function markAsRead(ContactSubmission $contactSubmission)
    {
        $contactSubmission->markAsRead();
        return redirect()->back()->with('success', 'Contact submission marked as read!');
    }

    public function markAsReplied(ContactSubmission $contactSubmission)
    {
        $contactSubmission->markAsReplied();
        return redirect()->back()->with('success', 'Contact submission marked as replied!');
    }

    public function archive(ContactSubmission $contactSubmission)
    {
        $contactSubmission->archive();
        return redirect()->back()->with('success', 'Contact submission archived!');
    }

    public function destroy(ContactSubmission $contactSubmission)
    {
        $contactSubmission->delete();
        return redirect()->route('admin.contact-submissions.index')->with('success', 'Contact submission deleted successfully!');
    }

    public function bulkAction(Request $request)
    {
        $request->validate([
            'action' => 'required|in:mark_read,mark_replied,archive,delete',
            'submissions' => 'required|array',
            'submissions.*' => 'exists:contact_submissions,id'
        ]);

        $submissions = ContactSubmission::whereIn('id', $request->submissions)->get();

        switch ($request->action) {
            case 'mark_read':
                $submissions->each->markAsRead();
                $message = 'Selected submissions marked as read!';
                break;
            case 'mark_replied':
                $submissions->each->markAsReplied();
                $message = 'Selected submissions marked as replied!';
                break;
            case 'archive':
                $submissions->each->archive();
                $message = 'Selected submissions archived!';
                break;
            case 'delete':
                ContactSubmission::whereIn('id', $request->submissions)->delete();
                $message = 'Selected submissions deleted!';
                break;
        }

        return redirect()->back()->with('success', $message);
    }
}
