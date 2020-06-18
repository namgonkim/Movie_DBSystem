<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
  $sql = "SELECT * FROM movie WHERE movie_ID = '{$_GET['movie_ID']}'";
  $row = $db->query($sql)->fetch(PDO::FETCH_OBJ);
?>
        <div class="card mt-4">
          <div class="card-body">
            <h3 class="card-title"><?php echo $row->Title ?></h3>
            <p class="card-text">
                개봉일:<?php echo $row->Release_date ?><br/>
                상영시간:<?php echo $row->Running_time ?>분<br/>
                <?php echo $row->Intro ?>
            </p>
          </div>
            <button type="modify" class="btn btn-default mb-3 mr-2">
              <a href="./update.php?movie_ID=<?php echo $row->movie_ID?>">수정
            </button>
            <button type="delete" class="btn btn-default mb-3 mr-2">
              <a href="./delete.php?movie_ID=<?php echo $row->movie_ID?>">삭제
            </button>
        </div>
        <!-- /.card -->

        <h3?></h3?>

<?php include("includes/footer.php");  ?>