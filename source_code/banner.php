<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $theater_theater_ID = $_GET['theater_ID'];
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
?>
<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="./resources/b_<?php echo $theater_theater_ID?>.PNG" alt="First slide">
              <br/>
              <img class="d-block img-fluid" src="./resources/t_<?php echo $theater_theater_ID?>.PNG" alt="First slide">
            </div>
          </div>
        </div>
        <div class="row">
          <?php
            $sql = "SELECT * FROM screen where theater_theater_ID = $theater_theater_ID"; 
            $result = $db->query($sql); 

            while($row = $result->fetch(PDO::FETCH_ASSOC))
            {

          ?>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <div class="card-body">
                <p class="card-text">
               <a href="./view_b.php?movie_Title=<?php echo $row['movie_Title']?>"> 영화 제목 : <?php echo $row['movie_Title'] ?></a><br/>
                </p>
              </div>
            </div>
          </div>
          <?php
            }
          ?>

<?php include("includes/footer.php");  ?>