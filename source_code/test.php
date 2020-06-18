<? $page_title = "Layout Tools"; ?>
<?php include("includes/header.php"); ?>
<?php
  // DB 연결
  $db = new PDO("mysql:host=localhost;dbname=db_movie;charset=utf8","root");
  $sql = $_GET['SQL'];
?>
	<br/>
	<input type="text" size = 80 class="form-control" placeholder="<?php echo $sql ?>" aria-label="Search" name="SQL">
	<br/>
        <div class="row">
        	<table class="table">
          	<?php
            $result = $db->query($sql);

            while($row = $result->fetch(PDO::FETCH_ASSOC))
            {
            ?>
            	<thead>
				<tr>
			<?php
        		foreach($row as $key=>$value){
    			//echo $key."-".$value."<br />";
    		?>
					<th><?php echo $key?></th>
    			<?php
				}
				?>
				</tr>
				</thead>
				<tbody>
				<tr>
				<?php
				foreach($row as $key=>$value){
					?>
						<td><?php echo $value?></td>
				<?php
				}
				?>
					</tr>
					</tbody>
			<?php
            }
        	?>
        	</table>

<?php include("includes/footer.php");  ?>