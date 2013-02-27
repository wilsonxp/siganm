<?php
session_start();
//datos para establecer la conexion con la base de mysql.
mysql_connect('localhost', 'root', 'root') or die('Ha fallado la conexi&oacuten: ' . mysql_error());
mysql_select_db('campusDB') or die('Error al seleccionar la Base de Datos: ' . mysql_error());

function quitar($mensaje)
{
    $nopermitidos = array("'", '\\', '<', '>', "\"");
    $mensaje  = str_replace($nopermitidos, "", $mensaje);
    return $mensaje;
}

$usuario  = $_POST['usuario'];
$password = $_POST['password'];
if (trim($usuario) != "" && trim($password) != "")
{
    // Puedes utilizar la funcion para eliminar algun caracter en especifico
    //$usuario = strtolower(quitar($HTTP_POST_VARS["usuario"]));
    //$password = $HTTP_POST_VARS["password"];
    // o puedes convertir los a su entidad HTML aplicable con htmlentities
    $usuario = strtolower(htmlentities($usuario, ENT_QUOTES));

    $result = mysql_query('SELECT password, login FROM usuario WHERE login=\'' . $usuario . '\'');
    if ($row    = mysql_fetch_array($result))
    {
        if ($row["password"] == $password)
        {
            $_SESSION["k_username"] = $usuario;
            echo 'Has sido logueado correctamente ' . $_SESSION['k_username'] . ' y sera redireccionado automaticamente <p>';
            //echo '<a href="index.php">Index</a></p>';
            //Elimina el siguiente comentario si quieres que re-dirigir autom&aacuteticamente a index.php			
            ?>
            <META HTTP-EQUIV="Refresh" CONTENT="2;URL=../index.php">
            <?php
        }
        else
        {
            echo "<script languaje='javascript'>alert('Password incorrecto'); window.location='../index.php'</script>";
        }
    }
    else
    {
        echo "<script languaje='javascript'>alert('El usuario no existe en la base de datos'); window.location='../index.php'</script>";
    }
    mysql_free_result($result);
}
else
{
    echo "<script languaje='javascript'>alert('Debe especificar un usuario y un password'); window.location='../index.php'</script>";
    ;
}
mysql_close();
?>