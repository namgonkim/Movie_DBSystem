<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
  $sql = "SELECT * from movie order by movie_ID asc";
  $result = $db->query($sql);
?>
	<br/>
	<br/>
        <div class="row">
        	<table class="table table-striped">
            	<thead>
            	<tr>
				<tr>
					<th>영화</th>
					<th>개봉일</th>
					<th>상영국가</th>
					<th>상영시간</th>
					<th>평점</th>
				</tr>
				</tr>
				</thead>
				<tbody>
				<?php
					while($row = $result->fetch(PDO::FETCH_ASSOC))
					{
				?>
				<tr>
					<td><a href="./admin_view.php?movie_ID=<?php echo $row['movie_ID']?>"><?php echo $row['Title']?></td>
					<td><?php echo $row['Release_date']?></td>
					<td><?php echo $row['Country']?></td>
					<td><?php echo $row['Running_time']?></td>
					<td><?php echo $row['Grade']?></td>
				</tr>
				<?php
					}
				?>
				</tbody>
        	</table>
        	<form role="form" action="./insert.php" >
			<button type="insert" class="btn btn-secondary mb-3 mr-2">등록</button>
			</form>

        	<nav aria-label="Page navigation example">
  				<ul class="pagination justify-content-end">
   					<li class="page-item disabled">
      					<a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    				</li>
    				<li class="page-item"><a class="page-link" href="#">1</a></li>
    				<li class="page-item"><a class="page-link" href="#">2</a></li>
    				<li class="page-item"><a class="page-link" href="#">3</a></li>
    				<li class="page-item">
      				<a class="page-link" href="#">Next</a>
    				</li>
  				</ul>
			</nav>
<?php include("includes/footer.php");  ?>