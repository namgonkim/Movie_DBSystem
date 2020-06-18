<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $title = $_GET['Title'];
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
?>
        <div class="row">
          <?php
            $sql = "SELECT * FROM movie where title LIKE '%$title%'"; 
            $result = $db->query($sql);

            while($row = $result->fetch(PDO::FETCH_ASSOC))
            {

          ?>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <img class="card-img-top" src="./resources/m<?php echo $row['movie_ID']?>.png" alt=""></a>
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
                    $str = "&#9734; &#9734; &#9734; &#9734; &#9734;";

                ?>
                <small class="text-muted"><?php echo $str?></small>
              </div>
            </div>
          </div>
          <?php
            }
          ?>

<?php include("includes/footer.php");  ?>