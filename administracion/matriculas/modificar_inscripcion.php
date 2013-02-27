<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>

<html>
    <head>
        <meta charset = "utf-8">
        <link href = "../../css/style.css" media = "screen" rel = "stylesheet" type = "text/css">
        <!--[if IE]><script src = "http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <title>CLASIFICADORES / ASIGNATURAS</title>
    </head>

    <body>
        <div id = "wrapper">
            <?php
            echo strtoupper('<b style="float: left; margin-top: 10px"> BIENVENIDO </b>');
            ?>
            <a style="float: left; margin-left: 3px; margin-top: 10px; font-size: 13px;" href="../../usuarios/logout.php"> (logout)</a>

            <nav>
                <?php
                session_start();
                include '../../utiles/validar_rol.php';
                ?>
                <ul class="menu" method="GET" name="menu">
                    <li><a title="home" href="../../index.php">Home</a></li>
                    <?php
                    if (rol($_SESSION['k_username']) == "ADMINISTRADOR")
                    {
                        echo ('<li><a class="active" href="../administracion.php">Administrar</a>');
                    }
                    ?>
                    <?php
                    if (rol($_SESSION['k_username']) == "ALUMNO")
                    {
                        echo ('<li><a href="">Mis Notas</a>');
                    }
                    ?>
                    <?php
                    if (rol($_SESSION['k_username']) == "PROFESOR" || rol($_SESSION['k_username']) == "ADMINISTRADOR")
                    {
                        echo ('<li><a href="">Notas</a>');
                    }
                    ?>
                </ul>
            </nav>

            <header>
                <img src="../../images/sigavam.png" style="height: 110px; width: 275px; float: left; padding: 6px 0px 8px 20px">
                <h1><a title="Sigavam" href="../../index.php">Proyecto del Sexto A sistemas</a></h1>
            </header> 

            <section id="main" class="clearfix">

                <aside id="sidebar">
                    <h3>Administrador / Asignaturas</h3>
                    <ul class="clearfix">
                        <li><a title="Agregar Asignaturas" href="asignaturas_insertar.php">Agregar Nuevo Registro</a></li>
                        <li><a title="Modificar Asignaturas" href="asignaturas_modificar.php">Modificar Un Registro</a></li>
                        <li><a title="Eliminar Asignaturas" href="asignaturas_eliminar.php">Eliminar Un Registro</a></li>
                        <li><a title="Buscar Asignaturas" href="asignaturas_buscar.php">Buscar Un Registro</a></li>
                        <li><a title="Asignaturas" href="../matriculas.php">Regresar</a></li>
                    </ul>
                </aside>
                <section  id="content">
                    <form>
<?php
include("../../utiles/conection.php");
?>

                        <table width="500" border="1" cellpadding="2" cellspacing="2">
                            <tr>
                                <td>Asignatura</td>
                                <td>Especialidad</td>
                            </tr>
                            <?php
                            $link   = conectarse();
                            $sql    = "select asignatura.nombre, asignatura.especialidad, asignatura.id from asignatura order by nombre asc";
                            $result = mysql_query($sql, $link);
                            if ($row    = mysql_fetch_array($result))
                            {
                                mysql_field_seek($result, 0);
                                while ($field = mysql_fetch_field($result))
                                {
                                    
                                }do
                                {
                                    ?>
                                    <tr>
                                        <td><a href="modificar_inscripcion_1.php ?id=<?php echo $row[2]; ?>"><?php echo $row[0]; ?></a></td>
                                        <td><?php echo $row[1]; ?></td>
                                    </tr>
        <?php
    }
    while ($row = mysql_fetch_array($result));
}
else
{
    echo "No Se encuentran registros!";
}
?>
                        </table>
                    </form>
                </section>
            </section>

            <footer>
                <section id="copyright">                  
                    <p> © Copyright 2012 SISMAT</p>
                </section>
            </footer>
        </div>
    </body>
</html> 

