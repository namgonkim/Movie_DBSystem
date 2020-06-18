<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $director_Name = $_GET['director_Name'];
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
?>
        <div class="row">
          <?php
            $sql = "SELECT movie_Title FROM direct where director_Name LIKE '%$director_Name%'"; 
            $result = $db->query($sql);
            while($row = $result->fetch(PDO::FETCH_ASSOC))
            {
              foreach($row as $key=>$value){
                // key = attribute, value = data in key
                $sql2 = "SELECT * from movie where title LIKE '%$value%'";
                $result2 = $db->query($sql2);
                while($row2 = $result2->fetch(PDO::FETCH_ASSOC))
                {
          ?>
            <div class="col-lg-4 col-md-6 mb-4">
            <br/>
            <div class="card h-100">
              <div class="card-body">
                <h4 class="card-title">
                  <a href="./view.php?movie_ID=<?php echo $row2['movie_ID']?>"><?php echo $row2['Title'] ?></a>
                </h4>
                <p class="card-text">
                개봉일:<?php echo $row2['Release_date'] ?><br/>
                상영시간:<?php echo $row2['Running_time'] ?>분<br/>
                </p>
              </div>
            </div>
          </div>
          <?php
                }
              }
            }
          ?>

<?php include("includes/footer.php");  ?>