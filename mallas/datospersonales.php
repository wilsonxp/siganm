<!DOCTYPE html>
<?php
include("conection.php");
?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi sitio</title>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $('#pais').change(function(){
                    var id=$('#pais').val();
                    $('#estados').load('ajax.php?id='+id);
                });    
            });
        </script>
    </head>
    <body>

        <HR width="100%" align="center">
        <br>
        <br>
        Nombre Completo: <input type="text" name="nombreCompleto" methot="post" size="40" maxlength="40"/>
        <br>	
        <br>	
        Apellido Paterno: <input type="text" name="submit1" method="post"/>&nbsp&nbsp;     
        Apellido Materno: <input type="text" name="submit2" method="post"/>&nbsp&nbsp;
        Primer Nombre: <input type="text" name="submit3" method="post"/> &nbsp&nbsp;
        Segundo Nombre: <input type="text" name="submit4" method="post"/>&nbsp&nbsp;

        <br>
        <br>

        Edad: <input type="text" name="submit" method="post" size="5" maxlength="5"/> &nbsp&nbsp&nbsp&nbsp;         
        Fecha de Nacimiento: <input type="calendar" name="calendar" mode="inline" id="inlineCal"/>  
        <br>
        <br>
        Cedula: <input type="text" name="submit" method="post"/>
        <br>
        <br>
    <TR>
        <TD>Genero</TD>
        <TD>
            <SELECT name="genero">
                <OPTION VALUE="masculino">Masculino</OPTION>
                <OPTION VALUE="femenino">Femenino</OPTION>
            </SELECT>
        </TD>
    </TR>  
    <br>
    <BR>
    <TR>
        <TD>Estado Civil</TD>
        <TD>
            <SELECT name="estadocivil">
                <OPTION VALUE="casado">Casado</OPTION>
                <OPTION VALUE="soltero">Soltero</OPTION>
                <option value="divorciado">Divorciado</option>
                <option value="viudo">Viudo</option>
            </SELECT>
        </TD>
    </TR>
    <br></br>
    <TR>
        <TD>Estado</TD>
        <TD>         
            <?php
            $consulta = mysql_query("select id,nombre from pais order by nombre ASC");
            echo "<select name='pais' id='pais'>";
            while ($fila     = mysql_fetch_array($consulta))
            {
                echo "<option value='" . $fila[0] . "'>" . utf8_encode($fila[1]) . "</option>";
            }
            echo "</select>";
            ?>  
        </TD>
    </TR> 
    <br>
    <br>
    <TR>
        <TD>Provincia</TD>
        <TD>
            <div id="estados">
                <select name="edo">
                    <option value="">Seleccione un pais</option>
                </select>
            </div>
        </TD>
    </TR> 
</form>

</body>
</html>