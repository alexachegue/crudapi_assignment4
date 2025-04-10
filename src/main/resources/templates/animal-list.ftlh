<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Spirit Animals</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/grids-responsive-min.css" />
    <link rel="stylesheet" href="/css/style.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</head>

<body class="d-flex flex-column min-vh-100">
<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Spirit Animal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="/butterfly/all">Home</a>
                    <a class="nav-link" href="/butterfly/about">About</a>
                    <a class="nav-link" href="#">Details</a>
                </div>
            </div>
        </div>
    </nav>
</header>

<main class="container my-4">
    <h1>${title}</h1>
    <a href="/butterfly/createForm" class="btn btn-outline-info mb-3 float-end">Create New Butterfly</a>

    <form action="/butterfly/name" method="get" class="d-flex my-3" role="search">
        <input type="text" name="search" class="form-control me-2" placeholder="Search by name 🔍" required>
        <button type="submit" class="btn btn-outline-primary">Search</button>
    </form>

    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4 mt-4">
        <#list butterflyList as butterfly>
        <div class="col">
            <div class="card h-100 shadow-sm border-0" style="background-color: #e6f4f1;">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <h5 class="card-title text-primary">${butterfly.name}</h5>
                            <h6 class="card-subtitle mb-2 text-muted">
                                <a href="/butterfly/breed/${butterfly.breed}" class="text-decoration-none">${butterfly.breed}</a>
                            </h6>
                            <p class="card-text">
                                ID: <a href="/butterfly/${butterfly.butterflyId?c}">${butterfly.butterflyId?c}</a>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p class="card-text">Bio: ${butterfly.description}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#list>
    </div>
</main>

<footer class="mt-auto text-center p-3" style="font-weight: bold;">
    &copy; 2025 Spirit Animal Gallery
</footer>
</body>
</html>