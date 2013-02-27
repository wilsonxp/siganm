<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="33" height="33">
  <param name="movie" value="button14.swf" />
  <param name="quality" value="high" />
  <embed src="button14.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="33" height="33" ></embed>
</object>
<?php 
	include("coneccion.php");
	$link = conectarse();
	$id=$_GET['id'];
	$sql = "delete from profesorasisnatura where id = '$id' ";
	$result = mysql_query($sql,$link);
	echo"Registro eliminado !";
?><strong></strong>
</body>

</html>
