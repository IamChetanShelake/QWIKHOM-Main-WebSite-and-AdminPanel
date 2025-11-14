@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Create Hero Section -->
            <div class="section-card">
                <div class="card-header">
                    <i class="fas fa-plus me-2"></i>Create New Hero Section
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.hero.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label for="main_title" class="form-label">
                                        <i class="fas fa-heading me-2"></i>Main Title <span class="text-danger">*</span>
                                    </label>
                                    <textarea name="main_title" id="main_title" class="form-control" rows="3" required></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label for="description" class="form-label">
                                        <i class="fas fa-align-left me-2"></i>Description <span class="text-danger">*</span>
                                    </label>
                                    <textarea name="description" id="description" class="form-control" rows="5" required></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="image1" class="form-label">
                                        <i class="fas fa-image me-2"></i>Image 1
                                    </label>
                                    <input type="file" name="image1" id="image1" class="form-control" accept="image/*">
                                    <div class="form-text">Upload the first hero image</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="image2" class="form-label">
                                        <i class="fas fa-image me-2"></i>Image 2
                                    </label>
                                    <input type="file" name="image2" id="image2" class="form-control" accept="image/*">
                                    <div class="form-text">Upload the second hero image</div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="image3" class="form-label">
                                        <i class="fas fa-image me-2"></i>Image 3
                                    </label>
                                    <input type="file" name="image3" id="image3" class="form-control" accept="image/*">
                                    <div class="form-text">Upload the third hero image</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="image4" class="form-label">
                                        <i class="fas fa-image me-2"></i>Image 4
                                    </label>
                                    <input type="file" name="image4" id="image4" class="form-control" accept="image/*">
                                    <div class="form-text">Upload the fourth hero image</div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <div class="form-check">
                                        <input type="checkbox" name="is_active" id="is_active" class="form-check-input" value="1" checked>
                                        <label for="is_active" class="form-check-label">
                                            <i class="fas fa-toggle-on me-2"></i>Active Status
                                        </label>
                                    </div>
                                    <div class="form-text">Check to make this hero section active</div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="d-flex gap-2">
                                    <button type="submit" class="btn btn-custom">
                                        <i class="fas fa-save me-2"></i>Create Hero Section
                                    </button>
                                    <a href="{{ route('admin.hero.index') }}" class="btn btn-outline-secondary">
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
    $('#main_title').summernote({
        height: 150,
        toolbar: [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['insert', ['link']],
            ['view', ['fullscreen', 'codeview']]
        ]
    });

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
