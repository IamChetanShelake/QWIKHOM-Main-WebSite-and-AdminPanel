@extends('admin.layout.master')

@section('content')
<main>
    <!-- Main Content Wrapper -->
    <div class="main-content-wrapper">
        <div class="main-content" id="mainContent">
        <!-- Create Contact Information -->
            <div class="section-card">
                <div class="card-header">
                    <i class="fas fa-plus me-2"></i>Add New Contact Information
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.contact.store') }}" method="POST">
                        @csrf

                        <!-- Contact Information Section -->
                        <div class="mb-4">
                            <h5 class="mb-3 text-primary">
                                <i class="fas fa-address-card me-2"></i>Contact Information
                            </h5>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="location" class="form-label fw-bold">
                                        <i class="fas fa-map-marker-alt me-2 text-primary"></i>Location/Address <span class="text-danger">*</span>
                                    </label>
                                    <textarea name="location" id="location" class="form-control form-control-lg" rows="4" placeholder="Enter the business address or location" required>{{ old('location') }}</textarea>
                                    <div class="form-text">Enter the complete address or location description</div>
                                    @error('location')
                                        <div class="text-danger small">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="phone" class="form-label fw-bold">
                                        <i class="fas fa-phone me-2 text-success"></i>Phone Number <span class="text-danger">*</span>
                                    </label>
                                    <input type="tel" name="phone" id="phone" class="form-control form-control-lg" value="{{ old('phone') }}" placeholder="+1 (555) 123-4567" required>
                                    <div class="form-text">Enter the contact phone number</div>
                                    @error('phone')
                                        <div class="text-danger small">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="email" class="form-label fw-bold">
                                        <i class="fas fa-envelope me-2 text-warning"></i>Email Address <span class="text-danger">*</span>
                                    </label>
                                    <input type="email" name="email" id="email" class="form-control form-control-lg" value="{{ old('email') }}" placeholder="info@yourcompany.com" required>
                                    <div class="form-text">Enter the contact email address</div>
                                    @error('email')
                                        <div class="text-danger small">{{ $message }}</div>
                                    @enderror
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
                                                <strong>Ready to add this contact information?</strong>
                                            </div>
                                            <div class="d-flex gap-2">
                                                <button type="submit" class="btn btn-success btn-lg">
                                                    <i class="fas fa-plus me-2"></i>Add Contact Info
                                                </button>
                                                <a href="{{ route('admin.contact.index') }}" class="btn btn-outline-secondary btn-lg">
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
    // Live preview functionality
    function updatePreview() {
        const location = $('#location').val().trim();
        const phone = $('#phone').val().trim();
        const email = $('#email').val().trim();

        // Update location preview
        if (location) {
            $('#preview-location').show();
            $('#preview-location-text').text(location);
        } else {
            $('#preview-location').hide();
        }

        // Update phone preview
        if (phone) {
            $('#preview-phone').show();
            $('#preview-phone-text').text(phone);
        } else {
            $('#preview-phone').hide();
        }

        // Update email preview
        if (email) {
            $('#preview-email').show();
            $('#preview-email-text').text(email);
        } else {
            $('#preview-email').hide();
        }
    }

    // Update preview on input changes
    $('#location, #phone, #email').on('input change', updatePreview);

    // Initialize preview
    updatePreview();

    // Form validation feedback
    $('form').on('submit', function(e) {
        // Show loading state
        const submitBtn = $(this).find('button[type="submit"]');
        const originalText = submitBtn.html();
        submitBtn.html('<i class="fas fa-spinner fa-spin me-2"></i>Adding...').prop('disabled', true);

        // Re-enable after 10 seconds (in case of error)
        setTimeout(function() {
            submitBtn.html(originalText).prop('disabled', false);
        }, 10000);
    });
});
</script>
@endsection
