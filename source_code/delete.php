<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
  // 쿼리문 작성
  $sql = "DELETE FROM movie WHERE movie_ID = '{$_GET['movie_ID']}';";
  if ($db->query($sql)) { // 쿼리문 실행

    header('Location:./admin.php'); // 쿼리문이 정상적으로 실행되면 admin.php로 이동
  } else {
    print_r($db->errorInfo());    // 쿼리문에 문제가 있으면 에러 출력
  }