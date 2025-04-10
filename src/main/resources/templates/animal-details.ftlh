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

<body>
<header>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Spirit Animal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link" aria-current="page" href="/butterfly/all">Home</a>
                    <a class="nav-link" href="/butterfly/about">About</a>
                    <a class="nav-link active" href="#">Details</a>

                </div>
            </div>
        </div>
    </nav>
</header>


<h1>${title}</h1>


<div class="card fixed-card">
    <div class="card-header">
        ${butterfly.name}
    </div>
    <div class="card-body">
        <h5 class="card-title">ID: ${butterfly.butterflyId?c}</h5>
        <p class="card-text">Name: ${butterfly.name}</p>
        <p class="card-text">Bio: ${butterfly.description}</p>
        <p class="card-text">Breed: ${butterfly.breed}</p>
        <p class="card-text">Age: ${butterfly.age}</p>
        <p class="card-text">Active Date: ${butterfly.activeDate}</p>

        <a href="/butterfly/update/${butterflyId?c}" class="btn btn-info">Edit Butterfly</a>
        <a href="/butterfly/delete/${butterflyId?c}" class="btn btn-danger">Delete</a>
    </div>
</div>

<a href="/butterfly/all" class="btn btn-link">Back</a>

<footer class="text-center p-3" style="font-weight: bold;">
    &copy; 2025 Spirit Animal Gallery
</footer>

</body>
</html>