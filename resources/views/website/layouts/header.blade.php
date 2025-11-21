<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QwikHom - Professional Home Services</title>
    <link rel="stylesheet" href="{{ asset('assets/css/styles.css') }}">
    <link
        href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&family=DM+Sans:wght@300;400;500;600;700&family=Inter:wght@400;600;700&family=Roboto:wght@400;600;700&family=Source+Sans+3:wght@400;600;700&display=swap"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

</head>

<body>
    <!-- Navigation Header -->
    <header class="header">
        <nav class="nav-container">
            <div class="logo">
                <img src="{{ asset('assets/images/header_logo.png') }}" alt="QwikHom Logo">
            </div>
            <div class="search-icon">

            </div>
            <div class="navbar-collapse collapse" id="navbarNav" style="justify-content: center;">
                <ul class="nav-menu">
                    <li><a href="#home" class="nav-link active">Home</a></li>
                    <li><a href="#about" class="nav-link">About</a></li>
                    <li><a href="#services" class="nav-link">Service</a></li>
                    <li><a href="#how-it-works" class="nav-link">How it works</a></li>
                    <li><a href="#plans" class="nav-link">Plans</a></li>
                    <li><a href="#contact" class="nav-link">Contact Us</a></li>
                </ul>
            </div>

            <button class="navbar-toggler d-lg-none hamburger-btn" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="hamburger-line"></span>
                <span class="hamburger-line"></span>
                <span class="hamburger-line"></span>
            </button>
        </nav>
    </header>
