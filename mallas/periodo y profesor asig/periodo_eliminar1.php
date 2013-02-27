<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	color: #0000CC;
}
-->
</style>
</head>

<body>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="33" height="33">
  <param name="BGCOLOR" value="" />
  <param name="movie" value="button7.swf" />
  <param name="quality" value="high" />
  <embed src="button7.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="33" height="33" ></embed>
</object>
<p align="center" class="style1">Eliminacion de Datos </p>
<p>&nbsp; </p>
<?php
	include("coneccion.php");
?>
<table width="700" border="1" cellpadding="2" cellspacing="2">
	<tr>
	  <td>id</td>
		<td>fecha inicion</td>
		<td>fecha fin</td>
		<td>descripcion</td>
		<td>malla</td>
	</tr>
	<?php 
		$link = conectarse();
		$sql = "select id, fechaInicio, fechaFin, descripcion, malla from periodo";
		$result = mysql_query($sql,$link);
		if($row = mysql_fetch_array($result)){
			mysql_field_seek($result,0);
			while($field = mysql_fetch_field($result)){
			}do{
			?>
			<tr>
			<td><a href="periodo_eliminar2.php ?id=<?php echo$row[0];?>"><?php echo $row[0];?></a></td>
					<td><?php echo $row[1]; ?></td>
					<td><?php echo $row[2]; ?></td>
					<td><?php echo $row[3]; ?></td>
					<td><?php echo $row[4]; ?></td>
			</tr>
			<?php 
			}while($row = mysql_fetch_array($result));
		}else{
			echo "No se encuentran los resultados;";
		}
	?>
</table>
</body>
</html>
