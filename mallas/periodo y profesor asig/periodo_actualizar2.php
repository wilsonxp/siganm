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
  <p class="style1">Actualizacion de Datos  </p>
</div>
<p>
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="33" height="33">
    <param name="BGCOLOR" value="" />
    <param name="movie" value="button4.swf" />
    <param name="quality" value="high" />
    <embed src="button4.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="33" height="33" ></embed>
  </object>
  <?php
	$link = conectarse();
	$sql = "select id, fechaInicio, fechaFin, descripcion, malla from periodo";
	$result = mysql_query($sql,$link);
	if($row = mysql_fetch_array($result)){
		mysql_field_seek($result,0);
		while ($field = mysql_fetch_field($result)){
		}do{
			$id=$row[0];
			$fechaInicio=$row[1];
			$fechaFin=$row[2];
			$descripcion=$row[3];
			$malla=$row[4];
		}while($row = mysql_fetch_array($result));
	}else{
		echo "no se encontraron resultados!";
	}
?>
</p>
<form id="form1" name="form1" method="post" action="periodo_actualizar3.php">
	<table width="335" border="1" align="center" cellpadding="2" cellspacing="2">
		<tr>
			<td width="76"> malla</td>
			<td width="239">		      <input name="malla" type="text" value="<?php echo $malla;?>" />		      </td>
		</tr>
		<tr>
			<td>descripcion</td>
			<td>		      <input name="descripcion" type="text" value="<?php echo $descripcion;?>" />		      </td>
		</tr>
		<tr>
			<td>fechaInicio</td>
			<td>		      <input name="fechaInicio" type="text" value="<?php echo $fechaInicio;?>" />		      </td>
		</tr>
		<tr>
			<td>fehaFin</td>
		  <td>	        <input name="fechaFin" type="text" value="<?php echo $fechaFin;?>" />	        </td>
		</tr>
		<tr>
			<td>id</td>
		  <td> 
		    
	        <select name="id" id="id">
	          <?php
				$link = conectarse();
				$sql = "select id, fechaInicio, fechaFin, descripcion, malla from periodo order by malla";
				$result = mysql_query($sql,$link);
				if($row = mysql_fetch_array($result)){
					mysql_field_seek($result,0);
					while($field = mysql_fetch_field($result)){
					}do{
					?>
	          <option value="<?php echo $row[1]; ?>" <?php if($id==$row[0]){?> selected <?php } ?>>
	          <?php echo$row[0] ?>					</option>
	          <?php
					} while($row = mysql_fetch_array($result));
				}else{
					echo "no se encontarron resultados!";
				}
			?>
          </select>          </td></tr><tr>
			<td>&nbsp;</td>
			<td>
	          <input type="submit" name="submit" value="Guardar"/>	          <input name="id" type="hidden" value="<?php $id; ?>" /></td>
		</tr>
	</table>
	
</form>
</body>
</html>
