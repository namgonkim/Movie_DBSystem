<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
  $sql_movie = "SELECT * FROM movie WHERE movie_ID = '{$_GET['movie_ID']}'";
  $row_movie = $db->query($sql_movie)->fetch(PDO::FETCH_OBJ);
  $sql_act = "SELECT * FROM act WHERE movie_movie_ID = '{$_GET['movie_ID']}'";
  $row_act = $db->query($sql_act);
  $sql_direct = "SELECT * FROM direct WHERE movie_movie_ID = '{$_GET['movie_ID']}'";
  $row_direct = $db->query($sql_direct)->fetch(PDO::FETCH_OBJ);
  $sql_eval = "SELECT * FROM evaluation WHERE movie_movie_ID = '{$_GET['movie_ID']}'";
  $row_eval = $db->query($sql_eval)->fetch(PDO::FETCH_OBJ);
  $sql_genre = "SELECT * FROM moive_genre WHERE movie_movie_ID = $row_movie->movie_ID";
  $row_genre = $db->query($sql_genre)->fetch(PDO::FETCH_OBJ);
  $sql_genre2 = "SELECT * FROM genre WHERE genre_ID = $row_genre->genre_genre_ID";
  $row_genre2 = $db->query($sql_genre2)->fetch(PDO::FETCH_OBJ);
?>
<div class="card mt-4">
          <img class="card-img-top img-fluid" src="./resources/m<?php echo $row_movie->movie_ID ?>.png" alt="">
          <div class="card-body">
            <h3 class="card-title"><?php echo $row_movie->Title ?></h3>
            <?php echo '평점 : '?>
              <span class="text-warning">
                <?php
                  if ($row_movie->Grade > 8)
                    $str = "&#9733; &#9733; &#9733; &#9733; &#9733;";
                  else if ($row_movie->Grade > 6)
                    $str = "&#9733; &#9733; &#9733; &#9733; &#9734;";
                  else if ($row_movie->Grade > 4)
                    $str = "&#9733; &#9733; &#9733; &#9734; &#9734;";
                  else if($row_movie->Grade > 2)
                    $str = "&#9733; &#9733; &#9734; &#9734; &#9734;";
                  else
                    $str = "&#9733; &#9734; &#9734; &#9734; &#9734;";
                ?>
              <small class="text-warning"><?php echo $str?></small>
            </span>
            <br/>
            <p class="card-text">
                장르 : <a href="./search_genre.php?genre_ID=<?php echo $row_genre->genre_genre_ID?>" method="get"><?php echo $row_genre2->genre_type ?></a><br/>
                개봉일 : <?php echo $row_movie->Release_date ?><br/>
                상영시간 : <?php echo $row_movie->Running_time ?>분<br/>
                감독 : <a href="./search_dir.php?director_Name=<?php echo $row_direct->director_Name ?>" method="get">
                      <?php echo $row_direct->director_Name ?> </a> <br/>
                배우 : 
                <?php
                while($actor = $row_act->fetch(PDO::FETCH_ASSOC))
                {
                ?>
                    <a href="./search_act.php?actor_Name=<?php echo $actor['actor_Name'] ?>" method="get">
                    <?php echo $actor['actor_Name'] ?>
                    </a>
                    <?php echo '  ' ?>
                <?php
                }
                ?>
                <br/>
                <br/>
                누적관객수:<?php echo $row_eval->Audience_count ?><br/>
                추천수 : <?php echo $row_eval->Recommends ?><br/><br/>

                <?php echo $row_movie->Intro ?>
                </p>
          </div>
        </div>
        <!-- /.card -->
        <br/><br/>

<?php include("includes/footer.php");  ?>