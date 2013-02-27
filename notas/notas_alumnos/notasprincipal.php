<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link href="../css/style.css" media="screen" rel="stylesheet" type="text/css">
        <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <script language="JavaScript" type="text/javascript">
            function n(id){
                
                document.getElementById(id).style.display="block";//MOSTRAR BLOQUE IFRAME
            }
            function v(id){
                
                document.getElementById(id).style.display="none";//OCULTAR BLOQUE IFRAME
            }
        </script>
        <title>notas principal</title>
    </head>

    <body>
        <div id="wrapper"> 
            <?php
            echo strtoupper('<b style="float: left; margin-top: 10px"> BIENVENIDO </b>');
            ?>
            <a style="float: left; margin-left: 3px; margin-top: 10px; font-size: 13px;" href="../usuarios/logout.php"> (logout)</a>

            <nav>
                <ul class="menu" method="GET" name="menu">
                    <li><a title="home" href="../index.php">Perfil</a></li>
                    <li><a class="active" href="../administracion/administracion.php">Administrar</a>
                    <li><a href="contactos.php">Contactos</a></li>
                </ul>
            </nav>

            <header>
                <img src="../images/sigavam.png" style="height: 110px; width: 275px; float: left; padding: 6px 0px 8px 20px">
                <h1><a title="Sigavam" href="../index.php">Proyecto del Sexto A sistemas</a></h1>
            </header> 

            <section id="main" class="clearfix">

                <aside id="sidebar">
                    <h3>Administrador</h3>
                    <ul class="clearfix">
                        <li><a onclick="n('marco')" title="Matriculas" href="">123</a></li>
                        <li><a onclick="" title="Mallas" href="administracion.php">Mallas</a></li>
                        <li><a title="Notas" href="#">Notas</a></li>
                        <li><a title="Profesores" href="#">Profesores</a></li>
                    </ul>               
                    <h3>Redes Sociales</h3>
                    <ul class="clearfix">
                        <li><a title="Skydrive" target="_new" href="https://groups.live.com/quintoaitsbj/">Skydrive</a></li>
                    </ul>
                </aside>
                <section  id="content">
                    contenido de notas principal
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
