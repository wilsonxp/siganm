<form action="validar_usuario.php" method="POST">
    <html> 
        <head> 
            <title>Fondo de prueba</title>
            <LINK REL="stylesheet" TYPE="text/css" href="estilo.css">

        </head> 
        <body background="fond.JPG" bgcolor="FFCECB"> 
        </body> 
    </html> 
    <br>
    <div style="size:75%; position:absolute">
        <p>DATOS PERSONALES<br /></p>
        <?php
        include ('datospersonales.php');
        ?>


        <br>

        <br>
        <br>

        <p>TELEFONOS<br /></p>

        <?php
        include ('telefonos.php');
        ?>
        <br>

        <br>

        <p>DIRECCIONES<br /></p>

        <?php
        include ('direcciones.php');
        ?>
        <br>
        <br>     

        <p>DATOS PROFECIONALES<br /></p>

        <?php
        include ('datosprofecionales.php');
        ?>

    </div>

</form>

