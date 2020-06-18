<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
  $movie_ID = $_POST['movie_ID'];
  $Title = $_POST['Title'];
  $Release_date = $_POST['Release_Date'];
  $Country = $_POST['Country'];
  $Running_time =$_POST['Running_time'];
  $Grade = $_POST['Grade'];
  $Intro = $_POST['Intro'];

  // 쿼리문 작성
  $sql = "UPDATE movie SET
                          Title = '$Title',
                          Release_date = '$Release_date',
                          Country = '$Country',
                          Running_time = '$Running_time',
                          Grade = '$Grade',
                          Intro = '$Intro'
    WHERE movie_ID = $movie_ID";

  if ($db->query($sql)) { // 쿼리문 실행
     header('Location:./admin.php'); // 쿼리문이 정상적으로 실행되면 list.php로 이동
   } else {
     print_r($db->errorInfo());    // 쿼리문에 문제가 있으면 에러 출력
   }

?>