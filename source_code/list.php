<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
?>
      <br/>
      <form class="d-none d-md-inline-block form-inline ml-auto mr-5 mr-md-5 my-5 my-md-1"method="get" name=frm1 action="./test.php">
        <input type="text" size = 80 class="form-control" placeholder="sql 입력" aria-label="Search" name="SQL">
        <button type="summit" class="btn btn-success" type="button">검색 </button>
      </form>
        <div class="row">
          <?php
            $sql = 'select * from movie order by movie_ID';
            $result = $db->query($sql);
            while($row = $result->fetch(PDO::FETCH_ASSOC))
            {
          ?>
          <div class="col-lg-4 col-md-6 mb-4">
            <br/>
            <div class="card h-100">
              <div class="card-body">
                <h4 class="card-title">
                  <a href="./view.php?movie_ID=<?php echo $row['movie_ID']?>"><?php echo $row['Title'] ?></a>
                </h4>
                <p class="card-text">
                개봉일:<?php echo $row['Release_date'] ?><br/>
                상영시간:<?php echo $row['Running_time'] ?>분<br/>
                </p>
              </div>
            </div>
          </div>

          <?php
            }
          ?>

<?php include("includes/footer.php");  ?>