<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style3 {
	font-size: 18px;
	color: #3333CC;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<p align="center">
  <?php
	include("coneccion.php");
?> 
  <span class="style3">Profesor Asignatura</span></p>
<table width="700" border="1" cellpadding="2" cellspacing="2">
	<tr>
	    <td>id</td>
		<td>asignatura</td>
		<td>profesor</td>
	</tr>
	<?php
		$link = conectarse();
		$sql = " select id, asignatura, profesor from profesorasisnatura";
		$result = mysql_query($sql,$link);
		if($row = mysql_fetch_array($result)){
			mysql_field_seek($result,0);
			while ($field = mysql_fetch_field($result)){
			}do{
			?>
			<tr>
				<td><a href="profrasignt_actualizar2.php ?id=<?php echo $row[0];?>"><?php echo $row[0];?></a></td>
				<td><?php echo $row[1]; ?></td>
				<td><?php echo $row[2]; ?></td>
	
			</tr>
			<?php
			} while ($row = mysql_fetch_array($result));
		}else{
			echo "No Se encuentran registros!";
		}
	?>
</table>				
</body>
</html>
