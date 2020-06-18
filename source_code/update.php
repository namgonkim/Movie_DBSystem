<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
  $movie_ID = $_GET['movie_ID'];
  $sql = "SELECT * FROM movie WHERE movie_ID = $movie_ID";
  $row = $db->query($sql)->fetch(PDO::FETCH_OBJ);
?>
      
        <div class="row">
          <div class ="col-lg-12">
            <div class="panel panel-default">
              <br/>
              <br/>
              <table class="table"><thead><tr><th>영화 수정</th></tr></thead></table>
              <!-- /.panel-heading -->
              <br/>
              <div class="panel-body">
                <form role="form" action="./update_ok.php" method="post">
                  <!-- title -->
                  <div class="form-group">
                    <label>movie_ID</label> <input class="form-control" name = 'movie_ID' id='movie_ID' value="<?php echo $row->movie_ID?>" readonly>
                  </div>
                  <!-- title -->
                  <div class="form-group">
                    <label>Title</label> <input class="form-control" name = 'Title' id='Title' value="<?php echo $row->Title?>" readonly>
                  </div>
                  <!-- release date -->
                  <div class="form-group">
                    <label>Release_Date</label> <input class="form-control" name = 'Release_Date' id='Release_Date' placeholder="<?php echo $row->Release_date?>">
                  </div>

                  <!-- Country -->
                  <div class="form-group">
                    <label>Country</label> <input class="form-control" name = 'Country' id= 'Country' placeholder="<?php echo $row->Country?>">
                  </div>

                  <!-- Running time -->
                  <div class="form-group">
                    <label>Running_Time</label> <input class="form-control" name = 'Running_time' id='Running_time' placeholder="<?php echo $row->Running_time?>">
                  </div>

                  <!-- Grade -->
                  <div class="form-group">
                    <label>Grade</label> <input class="form-control" name = 'Grade' id='Grade' placeholder="<?php echo $row->Grade?>">
                  </div>
                  
                  <!-- Intro -->
                  <div class ="form-group">
                    <label>Intro</label>
                    <textarea class = "form-control" rows="5" name='Intro'id = 'Intro' placeholder="<?php echo $row->Intro?>"></textarea>
                  </div>
        
                  <button id ="Submitbtn" type="submit" class ="btn btn-dark btnSubmit btn">수정</button>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                </form>
              </div>
            </div>
          </div>
<?php include("includes/footer.php");  ?>



<!-- <?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
  $sql = "SELECT * FROM board WHERE idx = '{$_GET['idx']}'";
  $row = $db->query($sql)->fetch(PDO::FETCH_OBJ);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>게시물 작성</title>
</head>
<body>
  <form action="./update_ok.php?idx=<?php echo $_GET['idx']?>" method="post">
    <fieldset>
      <legend>글작성</legend>
      <ul>
        <li>
          <label>
            제목
            <input type="text" name="subject" value="<?php echo $row->subject?>">
          </label>
        </li>
        <li>
          <label>
            작성자
            <input type="text" name="writer" value="<?php echo $row->writer?>">
          </label>
        </li>
        <li>
          <label>
            내용
            <input type="text" name="content" value="<?php echo $row->content?>" size="80">
          </label>
        </li>
        <li>
          <button type="submit">완료</button>
          <button type="button" onclick="location.href = './view.php?idx=<?php echo $row->idx?>'">취소</button>
        </li>
      </ul>
    </fieldset>
  </form>
</body>
</html> -->