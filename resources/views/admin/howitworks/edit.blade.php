@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Edit How It Works Item -->
            <div class="section-card">
                <div class="card-header">
                    <i class="fas fa-edit me-2"></i>Edit How It Works Item
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.howitworks.update', $howItWork) }}" method="POST">
                        @csrf
                        @method('PUT')

                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label for="title" class="form-label">
                                        <i class="fas fa-heading me-2"></i>Title <span class="text-danger">*</span>
                                    </label>
                                    <input type="text" name="title" id="title" class="form-control" value="{{ old('title', $howItWork->title) }}" placeholder="Enter the step title" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label for="description" class="form-label">
                                        <i class="fas fa-align-left me-2"></i>Description <span class="text-danger">*</span>
                                    </label>
                                    <textarea name="description" id="description" class="form-control" rows="5" required>{{ old('description', $howItWork->description) }}</textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="order" class="form-label">
                                        <i class="fas fa-sort-numeric-down me-2"></i>Display Order <span class="text-danger">*</span>
                                    </label>
                                    <select name="order" id="order" class="form-control" required>
                                        <option value="">Select Order Number</option>
                                        @for($i = 1; $i <= 4; $i++)
                                            @php
                                                $isTaken = \App\Models\HowItWork::where('order', $i)->where('id', '!=', $howItWork->id)->exists();
                                            @endphp
                                            <option value="{{ $i }}" {{ old('order', $howItWork->order) == $i ? 'selected' : '' }} {{ $isTaken ? 'disabled' : '' }}>
                                                {{ $i }} {{ $isTaken ? '(Already Used)' : '' }}
                                            </option>
                                        @endfor
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <div class="form-check">
                                        <input type="checkbox" name="is_active" id="is_active" class="form-check-input" value="1" {{ old('is_active', $howItWork->is_active) ? 'checked' : '' }}>
                                        <label for="is_active" class="form-check-label">
                                            <i class="fas fa-toggle-on me-2"></i>Active Status
                                        </label>
                                    </div>
                                    <div class="form-text">Check to make this step active</div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="d-flex gap-2">
                                    <button type="submit" class="btn btn-custom">
                                        <i class="fas fa-save me-2"></i>Update How It Works Item
                                    </button>
                                    <a href="{{ route('admin.howitworks.index') }}" class="btn btn-outline-secondary">
                                        <i class="fas fa-times me-2"></i>Cancel
                                    </a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection

@section('scripts')
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">

<script>
$(document).ready(function() {
    $('#description').summernote({
        height: 200,
        toolbar: [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['insert', ['link', 'picture']],
            ['view', ['fullscreen', 'codeview']]
        ]
    });
});
</script>
@endsection
