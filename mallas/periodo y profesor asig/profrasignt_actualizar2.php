<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<?php
	include("coneccion.php");
	$id = $_GET['id'];
?>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Acualizacion del periodo</title>
<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	color: #0000CC;
}
-->
</style>
</head>

<body>
<div align="center">
  <p class="style1">modificacion de datos profesor asignatura </p>
</div>
<p><?php
	$link = conectarse();
	$sql = "select id, asignatura, profesor from profesorasisnatura";
	$result = mysql_query($sql,$link);
	if($row = mysql_fetch_array($result)){
		mysql_field_seek($result,0);
		while ($field = mysql_fetch_field($result)){
		}do{
			$id=$row[0];
			$asignatura=$row[1];
			$profesor=$row[2];
		
		}while($row = mysql_fetch_array($result));
	}else{
		echo "no se encontraron resultados!";
	}
?>
</p>
<form id="form1" name="form1" method="post" action="profrasignt_actualizar3.php">
	<table width="335" border="1" align="center" cellpadding="2" cellspacing="2">
<tr>
			<td width="76"> Asignatuta</td>
			<td width="239"><input name="asignatura" type="text" value="<?php echo $asignatura;?>" /></td>
		</tr>
		<tr>
			<td>profesor</td>
			<td><input name="profesor" type="text" value="<?php echo $profesor;?>" /></td>
		</tr>
		<tr>
			<td>id</td>
			<td> <select name="id" id="id">
			<?php
				$link = conectarse();
				$sql = "select id, asignatura, profesor from profesorasisnatura order by id";
				$result = mysql_query($sql,$link);
				if($row = mysql_fetch_array($result)){
					mysql_field_seek($result,0);
					while($field = mysql_fetch_field($result)){
					}do{
					?>
	      <option value="<?php echo $row[0]; ?>" <?php if($id == $row[0]){?> selected <?php } ?>>
					<?php echo$row[1] ?>
					</option>
					<?php
					} while($row = mysql_fetch_array($result));
				}else{
					echo "no se encontarron resultados!";
				}
			?>
          </select>          </td></tr><tr>
			<td>&nbsp;</td>
			<td>
	          <input type="submit" name="submit" value="Guardar"/>	          <input name="id" type="hidden" value="<?php $id; ?>" />            </td>
		</tr>
	</table>
</form>
</body>
</html>
