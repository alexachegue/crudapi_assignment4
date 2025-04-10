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
                    <a class="nav-link" aria-current="page" href="/butterfly/all">Home</a>
                    <a class="nav-link" href="/butterfly/about">About</a>
                    <a class="nav-link active" href="#">Details</a>
                </div>
            </div>
        </div>
    </nav>
</header>

<div class="container my-4">
    <h1>${title}</h1>
    <form id="new-butterfly" action="/butterfly/update/${butterfly.butterflyId?c}" method="post">
        <input type="text" id="butterflyId" name="butterflyId" value="${butterfly.butterflyId?c}" readonly/>
        <input type="text" id="name" name="name" value="${butterfly.name}" placeholder="Name"/>
        <input type="text" id="breed" name="breed" value="${butterfly.breed}" placeholder="Breed"/>
        <input type="text" id="description" value="${butterfly.description}" name="description" placeholder="Bio"/>
        <input type="number" id="age" name="age" value="${butterfly.age}" placeholder="Age"/>
        <button type="submit" class="btn btn-info">Save</button>
        <a href="/butterfly/all" class="btn btn-outline-danger">Cancel</a>
    </form>
</div>

<footer class="mt-auto text-center p-3" style="font-weight: bold;">
    &copy; 2025 Spirit Animal Gallery
</footer>
</body>

</html>