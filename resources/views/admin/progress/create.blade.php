@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Create Progress Statistic -->
            <div class="section-card">
                <div class="card-header">
                    <i class="fas fa-plus me-2"></i>Create New Progress Statistic
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.progress.store') }}" method="POST">
                        @csrf

                        <!-- Basic Information Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-primary">
                                <i class="fas fa-info-circle me-2"></i>Statistic Information
                            </h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="title" class="form-label fw-bold">
                                            <i class="fas fa-tag me-2 text-primary"></i>Title <span class="text-danger">*</span>
                                        </label>
                                        <input type="text" name="title" id="title" class="form-control form-control-lg" value="{{ old('title') }}" placeholder="Enter statistic title (e.g., Happy Customers)" required>
                                        <div class="form-text">This will be displayed below the number</div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label fw-bold">
                                            <i class="fas fa-image me-2 text-success"></i>Choose Icon <span class="text-danger">*</span>
                                        </label>
                                        <input type="hidden" name="logo" id="logo" value="{{ old('logo', 'fas fa-users') }}" required>

                                        <!-- Icon Grid -->
                                        <div class="icon-grid border rounded p-3 bg-light">
                                            <div class="row">
                                                <div class="col-12 mb-2">
                                                    <small class="text-muted fw-bold">Click on an icon to select it:</small>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-users">
                                                        <i class="fas fa-users fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-star">
                                                        <i class="fas fa-star fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-tools">
                                                        <i class="fas fa-tools fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-chart-line">
                                                        <i class="fas fa-chart-line fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-trophy">
                                                        <i class="fas fa-trophy fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-heart">
                                                        <i class="fas fa-heart fa-2x"></i>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-check-circle">
                                                        <i class="fas fa-check-circle fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-clock">
                                                        <i class="fas fa-clock fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-shield-alt">
                                                        <i class="fas fa-shield-alt fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-rocket">
                                                        <i class="fas fa-rocket fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-lightbulb">
                                                        <i class="fas fa-lightbulb fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-crown">
                                                        <i class="fas fa-crown fa-2x"></i>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-thumbs-up">
                                                        <i class="fas fa-thumbs-up fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-award">
                                                        <i class="fas fa-award fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-gem">
                                                        <i class="fas fa-gem fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-fire">
                                                        <i class="fas fa-fire fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-bolt">
                                                        <i class="fas fa-bolt fa-2x"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2 text-center mb-2">
                                                    <button type="button" class="btn btn-outline-primary icon-option" data-icon="fas fa-smile">
                                                        <i class="fas fa-smile fa-2x"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="value" class="form-label fw-bold">
                                            <i class="fas fa-calculator me-2 text-warning"></i>Value <span class="text-danger">*</span>
                                        </label>
                                        <input type="number" name="value" id="value" class="form-control form-control-lg" value="{{ old('value') }}" placeholder="10000" step="0.1" min="0" required>
                                        <div class="form-text">The number to display (will show with + or % based on type)</div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="type" class="form-label fw-bold">
                                            <i class="fas fa-percentage me-2 text-info"></i>Display Type <span class="text-danger">*</span>
                                        </label>
                                        <select name="type" id="type" class="form-control form-control-lg" required>
                                            <option value="number" {{ old('type', 'number') == 'number' ? 'selected' : '' }}>Number (+)</option>
                                            <option value="percentage" {{ old('type', 'number') == 'percentage' ? 'selected' : '' }}>Percentage (%)</option>
                                        </select>
                                        <div class="form-text">Choose how the value should be displayed</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Preview Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-success">
                                <i class="fas fa-eye me-2"></i>Live Preview
                            </h5>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="border rounded p-4 bg-light">
                                        <div class="text-center">
                                            <div id="preview-icon" class="mb-3">
                                                <i class="fas fa-users fa-3x text-primary"></i>
                                            </div>
                                            <h2 id="preview-value" class="mb-2">10,000<span class="text-primary">+</span></h2>
                                            <p id="preview-title" class="mb-0 text-muted">Happy Customers</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Settings Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-secondary">
                                <i class="fas fa-cog me-2"></i>Settings
                            </h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="form-check form-switch">
                                                <input type="checkbox" name="is_active" id="is_active" class="form-check-input" value="1" {{ old('is_active', true) ? 'checked' : '' }}>
                                                <label for="is_active" class="form-check-label fw-bold">
                                                    <span class="badge bg-success me-2">Active</span> Make this statistic visible on the website
                                                </label>
                                            </div>
                                            <div class="form-text">Uncheck to hide this statistic</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Action Buttons -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card border-0 bg-light">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <i class="fas fa-save me-2 text-primary"></i>
                                                <strong>Ready to create this progress statistic?</strong>
                                            </div>
                                            <div class="d-flex gap-2">
                                                <button type="submit" class="btn btn-success btn-lg">
                                                    <i class="fas fa-plus me-2"></i>Create Statistic
                                                </button>
                                                <a href="{{ route('admin.progress.index') }}" class="btn btn-outline-secondary btn-lg">
                                                    <i class="fas fa-times me-2"></i>Cancel
                                                </a>
                                            </div>
                                        </div>
                                    </div>
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
<script>
$(document).ready(function() {
    // Icon picker functionality
    $('.icon-option').on('click', function() {
        const selectedIcon = $(this).data('icon');

        // Remove active class from all buttons
        $('.icon-option').removeClass('active btn-primary').addClass('btn-outline-primary');

        // Add active class to selected button
        $(this).removeClass('btn-outline-primary').addClass('active btn-primary');

        // Update the hidden input
        $('#logo').val(selectedIcon);

        // Update preview
        updatePreview();
    });

    // Live preview functionality
    function updatePreview() {
        const title = $('#title').val() || 'Statistic Title';
        const logo = $('#logo').val() || 'fas fa-users';
        const value = parseFloat($('#value').val()) || 0;
        const type = $('#type').val() || 'number';

        $('#preview-title').text(title);
        $('#preview-icon i').attr('class', logo + ' fa-3x text-primary');

        const formattedValue = type === 'percentage'
            ? value.toFixed(1)
            : value.toLocaleString();

        const suffix = type === 'percentage' ? '%' : '+';
        $('#preview-value').html(formattedValue + '<span class="text-primary">' + suffix + '</span>');
    }

    // Update preview on input changes
    $('#title, #logo, #value, #type').on('input change', updatePreview);

    // Initialize preview
    updatePreview();

    // Form validation feedback
    $('form').on('submit', function(e) {
        // Show loading state
        const submitBtn = $(this).find('button[type="submit"]');
        const originalText = submitBtn.html();
        submitBtn.html('<i class="fas fa-spinner fa-spin me-2"></i>Creating...').prop('disabled', true);

        // Re-enable after 10 seconds (in case of error)
        setTimeout(function() {
            submitBtn.html(originalText).prop('disabled', false);
        }, 10000);
    });
});
</script>
@endsection
