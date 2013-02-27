<?php

include("../../utiles/conection.php");
$ID     = $_GET['id'];
$link   = conectarse();
$sql    = "delete from asignatura where id = $ID ";
$result = mysql_query($sql);
echo "<script languaje='javascript'>alert('El Registro se a guardado con exito'); window.location='asignaturas_eliminar.php'</script>";
?>
