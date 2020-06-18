<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
?>

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <a href="./banner.php?theater_ID=1"><img class="d-block img-fluid" src="./resources/b_1.png" alt="First slide" href="https://www.megabox.co.kr/?menuId=event&p=detail&p2=7874"></a>
            </div>
            <div class="carousel-item">
             <a href="./banner.php?theater_ID=2"><img class="d-block img-fluid" src="./resources/b_2.png" alt="Second slide" href="http://section.cgv.co.kr/event/running/EventZone.aspx?idx=1453"></a>
            </div>
            <div class="carousel-item">
              <a href="./banner.php?theater_ID=3"><img class="d-block img-fluid" src="./resources/b_3.png" alt="Third slide"></a>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">
          <?php
            for($count=1;$count<=6;$count++){
            $sql = "SELECT * from movie WHERE movie_ID=$count";
            $result = $db->query($sql);
            while($row = $result->fetch(PDO::FETCH_ASSOC))
            {
          ?>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <img class="card-img-top" src="./resources/no<?php echo $row['movie_ID']?>.png" alt="">
              <a href="./view.php?movie_ID=<?php echo $row['movie_ID']?>"><img class="card-img-top" src="./resources/m<?php echo $row['movie_ID']?>.png" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="./view.php?movie_ID=<?php echo $row['movie_ID']?>"><?php echo $row['Title'] ?></a>
                </h4>
                <p class="card-text">
                개봉일:<?php echo $row['Release_date'] ?><br/>
                상영시간:<?php echo $row['Running_time'] ?>분<br/>
                <?php echo $row['Intro'] ?>
                </p>
              </div>
              <div class="card-footer">
                <?php
                  if ($row['Grade'] > 8)
                    $str = "&#9733; &#9733; &#9733; &#9733; &#9733;";
                  else if ($row['Grade'] > 6)
                    $str = "&#9733; &#9733; &#9733; &#9733; &#9734;";
                  else if ($row['Grade'] > 4)
                    $str = "&#9733; &#9733; &#9733; &#9734; &#9734;";
                  else if($row['Grade'] > 2)
                    $str = "&#9733; &#9733; &#9734; &#9734; &#9734;";
                  else
                    $str = "&#9733; &#9734; &#9734; &#9734; &#9734;";

                ?>
                <small class="text-muted"><?php echo $str?></small>
              </div>
            </div>
          </div>


          <?php
        }
            }
          ?>

<?php include("includes/footer.php");  ?>