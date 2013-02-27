<?php
include "../../utiles/conection.php";
?>
<head>
    <meta charset = "utf-8">
    <link href = "../../css/style.css" media = "screen" rel = "stylesheet" type = "text/css">
    <!--[if IE]><script src = "http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <title>MATRICULAS</title>
</head>

<form name="f1" id ="form" method="POST" action="newEmptyPHP.php">
    <fieldset>
        <legend><b>Informaci&oacuten personal</b></legend>
        <table style="width: 100%">
            <tr>
                <td style="width: 25%"><p>Primer Nombre:</p></td>
                <td style="width: 25%"><input type="text" name="primer_nombre" maxlength="30" size="32"/></td>
                <td style="width: 25%"><p>Segundo Nombre:</p></td>
                <td style="width: 25%"><input type="text" name="segundo_nombre" maxlength="30" size="32" /></td>
            </tr>
            <tr>
                <td><p>Apellido Paterno:</p></td>
                <td><input type="text" name="apellido_paterno" maxlength="30" size="32" /></td>
                <td><p>Apellido Materno:</p></td>
                <td><input type="text" name="apellido_materno" maxlength="30" size="32" /><br></td>
            </tr>
            <tr>
                <td><p> Nombre Completo: </p></td>
                <td colspan="3"> <input type="text" name="nombre_completo" disabled="true" size="85"/> </td>
            </tr>
            <tr>
                <td><p>Cedula:</p></td>
                <td> <input type="text" name="cedula" method="post" size="30" maxlength="2"/></td>
                <td><p>Fecha de Nacimiento:</p></td>
                <td><input type="date" name="fecha_nacimiento" mode="inline" size="30"/> </td>
            </tr>
            <tr>
                <td><p>Edad:</p></td>
                <td> <input type="text" name="edad" method="post" size="30" maxlength="2"/></td>
                <td><p>Genero:</p></td>
                <td>
                    <SELECT name="genero" >
                        <OPTION VALUE="masculino">Masculino</OPTION>
                        <OPTION VALUE="femenino">Femenino</OPTION>
                    </SELECT>
                </td>
            </tr>
            <tr>
                <td><p>Estado Civil:</p></td>
                <td>
                    <SELECT name="estadocivil">
                        <OPTION VALUE="Casado">Casado</OPTION>
                        <OPTION VALUE="Soltero">Soltero</OPTION>
                        <option value="Divorciado">Divorciado</option>
                        <option value="Union Libre">Union Libre</option>
                        <option value="Viudo">Viudo</option>
                    </SELECT>
                </td>
                <td><p>Pa&iacutes:</p></td>
                <td>
                    <SELECT name=pais  >
                        <option value ="0" selected>Seleccione una Opcion...
                            <?php
                            $link   = Conectarse();
                            $sql    = "select id, nombre from pais order by nombre";
                            $result = mysql_query($sql, $link);
                            if ($row    = mysql_fetch_array($result))
                            {
                                mysql_field_seek($result, 0);
                                while ($field = mysql_fetch_field($result))
                                {
                                    
                                }do
                                {
                                    echo "<option value=" . $row[0] . ">" . $row[1] . "</option>";
                                }
                                while ($row = mysql_fetch_array($result));
                            }
                            else
                            {
                                echo "No se encontraron resultados!";
                            }
                            ?>
                    </SELECT>
                </td>
            </tr>
            <tr id="provincia">
                <td><p>Provincia:</p></td>
                <td>
                    <select name ="provincia1">
                        ?>
                        <option value="0" select>Seleccione una Opcion
                            <?php
                            $link   = Conectarse();
                            $sql    = "select id, nombre from provincia order by nombre";
                            $result = mysql_query($sql, $link);
                            if ($row    = mysql_fetch_array($result))
                            {
                                mysql_field_seek($result, 0);
                                while ($field = mysql_fetch_field($result))
                                {
                                    
                                }do
                                {
                                    echo "<option value=" . $row[0] . ">" . $row[1] . "</option>";
                                }
                                while ($row = mysql_fetch_array($result));
                            }
                            else
                            {
                                echo "No se encontraron resultados!";
                            }
                            ?>
                    </SELECT>
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset>
        <legend><b>Informaci&oacuten laboral</b></legend>
        <p>Direcci&oacuten: <input type="text" name="ldireccion" /></p>
        <p>Tel&eacutefono: <input type="text" name="ltelefono" /></p>
    </fieldset>
</form>


<p><b>TELEFONOS</b><br /></p>

<form action="validar_usuario.php" method="POST">

    <HR width="100%" align="center">
    <br />
    <p>Domicilio #:<input type="text" name="submit" method="post"/> </p>
    <p>Trabajo #: <input type="text" name="submit" method="post"/></p>
    <p>EXT: <input type="text" name="submit" method="post"/></p>
    <p>Movil1 #: <input type="text" name="submit" method="post"/>
    <tr>
        <td>Operadora</td>
        <td>
            <select name="operadora">
                <option valiue="Movistar">Movistar</option>
                <option value="Claro">Claro</option>
                <option value="Cnt">Cnt</option>
            </Select>
        </td>
    </tr>
    </p>
    <p>
       Movil2 #: <input type="text" name="submit" method="post"/>
    <tr>
       <td>Operadora</td>
       <td>
           <select name="operadora">
               <option valiue="Movistar">Movistar</option>
               <option value="Claro">Claro</option>
               <option value="Cnt">Cnt</option>
           </Select>
       </td>
   </tr>
   </p>
</form>

<br>

<br>

<p><b>DIRECCIONES</b><br /></p>

<form action="validar_usuario.php" method="POST">

    <HR width="100%" align="center">
    <br />
    <p>Direccion : <input typer="text" name="submit" method="post" size="50" maxlength="50"/></p>
    <p>Direccion Adicional : <input type="text" name="submit" method="post" size="40" maxlength="40"/></p>

</form>
<br>
<br>     

<p><b>DATOS PROFECIONALES</b><br /></p>

<html>
    <body>
        <HR width="100%" align="center">
        <br>
    <TR>
        <p>
            <TD>TITULO 1 :</TD>
        <TD>
            <SELECT name="titulo1">
                <OPTION VALUE="bachiller">Bachiller</OPTION>
                <OPTION VALUE="fisico">Fisico</OPTION>
            </SELECT>
        </TD>
        </p>
    </TR>  
    <TR>
        <p>
        <TD>TITULO 2 :</TD>
        <TD>
            <SELECT name="titulo2">
                <OPTION VALUE="tegnologo en sitemas">Tegnologo en Sitemas</OPTION>
                <OPTION VALUE="tegnologo en Marketing">Tegnologo en Marketing</OPTION>
            </SELECT>
        </TD>
        </p>
    </TR>
    <TR>
        <p>
        <TD>TITULO 3 :</TD>
        <TD>
            <SELECT name="Titulo3">
                <OPTION VALUE="ingeniero">INGENIERO EN SISTEMAS</OPTION>
                <OPTION VALUE="abogado">INGENIERO EN RR.HH.</OPTION>
                <OPTION VALUE="abogado">INGENIERO EN MARKETING</OPTION>
                <OPTION VALUE="abogado">INGENIERO CIVIL</OPTION>
                <OPTION VALUE="abogado">INGENIERO INDUSTRIAL</OPTION>
                <OPTION VALUE="abogado">INGENIERO EN COMPUTACION</OPTION>
                <OPTION VALUE="abogado">INGENIERO INDUSTRIAL</OPTION>
                <OPTION VALUE="abogado">INGENIERO PETROLERA</OPTION>
            </SELECT>
        </TD>
        </p>
    </TR>
</body>
</html>

</div>

</form>
