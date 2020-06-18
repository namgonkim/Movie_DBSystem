<?php?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>김승기 영화DB</title>

  <!-- Bootstrap core CSS -->
  <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="./css/shop-homepage.css" rel="stylesheet">
  <link href="./css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-success fixed-top">
    <div class="container">
      <a class="navbar-brand" href="./index.php">김승기 영화 DB</a>
      <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0"method="get" name=frm1 action="./search.php">
        <input type="text" class="form-control" placeholder="영화 검색" aria-label="Search" aria-describedby="basic-addon2" name="Title">
        <button type="summit" class="btn btn-dark" type="button">검색 </button>
    </form>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="./index.php">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./about.php">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./service.php">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./admin.php">Admin</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
        <!-- Categories Widget -->
        <h2 class="my-4">타입별 검색</h2>
        <div class="list-group">
          <a class="list-group-item" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">장르</a>
          <div class="dropdown-menu dropdown-menu-left" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="./search_genre.php?genre_ID=1"method="get">드라마</a>
                <a class="dropdown-item" href="./search_genre.php?genre_ID=2"method="get">스릴러</a>
                <a class="dropdown-item" href="./search_genre.php?genre_ID=3"method="get">SF</a>
                <a class="dropdown-item" href="./search_genre.php?genre_ID=4"method="get">멜로</a>
                <a class="dropdown-item" href="./search_genre.php?genre_ID=5"method="get">애니메이션</a>
          </div>
          <a href="./list.php" class="list-group-item">sql TEST</a>
        </div>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">