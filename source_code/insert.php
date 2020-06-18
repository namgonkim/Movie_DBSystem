<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");

?>
      
        <div class="row">
          <div class ="col-lg-12">
            <div class="panel panel-default">
              <br/>
              <br/>
              <table class="table"><thead><tr><th>영화 등록</th></tr></thead></table>
              <!-- /.panel-heading -->
              <br/>
              <div class="panel-body">
                <form role="form" action="./insert_ok.php" method="post">
                  <!-- id -->
                  <div class="form-group">
                    <label>movie_ID</label> <input class="form-control" name = 'movie_ID' id='movie_ID'>
                  </div>
                  <!-- title -->
                  <div class="form-group">
                    <label>Title</label> <input class="form-control" name = 'Title' id='Title'>
                  </div>
                  <!-- release date -->
                  <div class="form-group">
                    <label>Release_Date</label> <input class="form-control" name = 'Release_Date' id='Release_Date'>
                  </div>

                  <!-- Country -->
                  <div class="form-group">
                    <label>Country</label> <input class="form-control" name = 'Country' id= 'Country'>
                  </div>

                  <!-- Running time -->
                  <div class="form-group">
                    <label>Running_Time</label> <input class="form-control" name = 'Running_time' id='Running_time'>
                  </div>

                  <!-- Grade -->
                  <div class="form-group">
                    <label>Grade</label> <input class="form-control" name = 'Grade' id='Grade'>
                  </div>
                  
                  <!-- Intro -->
                  <div class ="form-group">
                    <label>Intro</label>
                    <textarea class = "form-control" rows="5" name='Intro'id = 'Intro'></textarea>
                  </div>
        
                  <button id ="Submitbtn" type="submit" class ="btn btn-dark btnSubmit btn">등록</button>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
            
                </form>
              </div>
            </div>
          </div>
<?php include("includes/footer.php");  ?>