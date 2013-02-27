<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php 
	include("coneccion.php");
	$id=$_POST['id'];
	$asignatura=$_POST['asignatura'];
	$profesor=$_POST['profesor'];
	$link = conectarse();
	$sql = "update profesorasisnatura set id = '$id' , asignatura= '$asignatura',profesor= '$profesor' where id= '$id'";
	$result = mysql_query($sql, $link);
	echo "Datos Actualizados!";
?>
</body>
</html>
