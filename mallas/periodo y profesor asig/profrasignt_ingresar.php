<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<body>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="33" height="33">
  <param name="movie" value="button11.swf" />
  <param name="quality" value="high" />
  <embed src="button11.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="33" height="33" ></embed>
</object>
<?php
	include("coneccion.php");
	$id=$_POST['id'];
	$asignatura=$_POST['asignatura'];
	$profesor=$_POST['profesor'];
	$link = conectarse();
	$sql = "insert into profesorasisnatura(id,asignatura,profesor) values('$id', '$asignatura','$profesor') ";
	$result = mysql_query($sql);
	echo "Registro Añadido........";
?>

</body>
</html>
