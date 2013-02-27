<?php

function rol($useractual)
{
//datos para establecer la conexion con la base de mysql.
    mysql_connect('localhost', 'root', 'root') or die('Ha fallado la conexi&oacuten: ' . mysql_error());
    mysql_select_db('campusDB') or die('Error al seleccionar la Base de Datos: ' . mysql_error());
    $usuario = $useractual;
    if (trim($usuario) != "")
    {
        $usuario = strtolower(htmlentities($usuario, ENT_QUOTES));
        $result  = mysql_query('SELECT rol, login FROM usuario WHERE login=\'' . $usuario . '\'');
        if ($row     = mysql_fetch_array($result))
        {
            return $row['rol'];
        }
        else
        {
            echo 'No puede realizar esta accion';
        }
        mysql_free_result($result);
    }
    else
    {
        echo 'Debe especificar un usuario y password';
    }
    mysql_close();
}

?>