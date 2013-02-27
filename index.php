<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="css/style.css" media="screen" rel="stylesheet" type="text/css">
        <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <title>BIENVENIDO A SIGAVAM</title>
    </head>
    <body>
        <div id="wrapper"> 
            <?php
            session_start();
            include 'utiles/validar_rol.php';
            if (isset($_SESSION['k_username']))
            {
                $userActual = $_SESSION['k_username'];
                echo strtoupper('<b style="float: left; margin-top: 10px"> BIENVENIDO   ' . $userActual . '</b>');
                ?>
                <a style="float: left; margin-left: 3px; margin-top: 10px; font-size: 13px;" href="usuarios/logout.php"> (logout)</a>
                <nav>
                    <ul class="menu" method="GET" name="menu">
                        <li><a class="active" title="home" href="index.php">Home</a></li>
                        <?php
                        if (rol($_SESSION['k_username']) == "ADMINISTRADOR")
                        {
                            echo ('<li><a href="administracion/administracion.php">Administrar</a>');
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
                    <img src="images/sigavam.png" style="height: 110px; width: 275px; float: left; padding: 6px 0px 8px 20px">
                    <h1><a title="Sigavam" href="index.php">Proyecto del Sexto A sistemas</a></h1>
                </header>                
            </div>
            <?php
        }
        else
        {
            echo '   
                 <div id="wrapper">
                    <header>
                       <img src="images/sigavam.png" style="height: 110px; width: 275px; float: left; padding: 6px 0px 8px 20px">
                       <h1><a title="Sigavam" href="index.php">Proyecto del Sexto A sistemas</a></h1>
                    </header>
                    <section id="main" class="clearfix">
                          <form action="usuarios/validar_usuario.php" method="POST" style="margin-top: 8px;">
                                <h2>Identificate</h2>
                                <div>
                                   <input class="TextBox" type="text" name="usuario" maxlength="20" placeholder="Usuario..." required="required"/>
                                </div>
                                <div>
                                   <input class="TextBox" type="password"  name="password" maxlength="10" placeholder="Password..." required="required" style="margin-top: 10pt"/>
                                </div>
                                   <input id="miBoton" type="submit" value="LOGIN" style="margin-top: 10pt" />
                          </form>
                          <footer style="margin-top: 8px; font-size: 9; font-size: 50">
                             <section id="templatecopy">
                                <p style="font-size: 18px">No eres Usuario? <a title="Registro Sigavam" href="usuarios/registrar.php">Reg&iacutestrate</a></p>
                             </section>
                          </footer>
                    </section>
                 </div>
			';
        }
        ?>
    </body>
</html>