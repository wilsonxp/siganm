<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Documento sin t&iacute;tulo</title>
    </head>

    <body>
        <?php

        function conectarse()
        {
            if (!($link = mysql_connect("localhost", "root", "root")))
            {
                echo "Error al conectarse con la base de datos";
                exit();
            }
            if (!mysql_select_db("campusdb", $link))
            {
                echo "error al seleccionar la basde de datos";
                exit();
            }
            return $link;
        }
        ?>
    </body>
</html>
