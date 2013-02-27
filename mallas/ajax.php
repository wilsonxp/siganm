<?php
include("conection.php");
$consulta = mysql_query("select id,nombre from provincia where pais=".$_GET['id']." order by nombre ASC");
echo "<select name='pais' id='pais'>";
while ($fila = mysql_fetch_array($consulta)) {
    echo "<option value='" . $fila[0] . "'>" . utf8_encode($fila[1]) . "</option>";
}
echo "</select>";
?>
