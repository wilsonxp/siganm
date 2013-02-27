<?php
session_start();
//datos para establecer la conexion con la base de mysql.
mysql_connect('localhost', 'root', 'root') or die('Ha fallado la conexi&oacuten: ' . mysql_error());
mysql_select_db('campusDB') or die('Error al seleccionar la Base de Datos: ' . mysql_error());

function formRegistro()
{
    ?>
    <script type="text/javascript">function mostraralert(){
        var alert = document.getElementById("alertcss");
        alert.style.opacity = 0; 
    }</script>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>REGISTRO</title>
            <link href="../css/style.css" media="screen" rel="stylesheet" type="text/css">
            <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        </head>
        <body>
            <div id="wrapper">
                <header>
                    <img src="../images/sigavam.png" style="height: 110px; width: 275px; float: left; padding: 6px 0px 8px 20px">
                    <h1><a title="Sigavam" href="../index.php">Proyecto del Sexto A sistemas</a></h1>
                </header>
                <section id="main" class="clearfix">
                    <section id="content" style="text-align: left; margin-left: 150px;">
                        <form action="../usuarios/registrar.php" method="post">
                            <h2>Introduce tus Datos:</h2>
                            <p>
                                Nombres (max45): *
                                <br>
                                <input type="text" name="username" maxlength="20" required="required" style="margin-top: 0.6%;" />
                                <br>
                                <br>
                                Usuario (max 20): *
                                <br>                              
                                <input type="text" name="user" size="20" maxlength="20"  required="required" style="margin-top: 0.6%;" />
                                <br>
                                <br>
                                Cedula (max 10): *
                                <br>
                                <input type="text" name="cedula" size="20" maxlength="10"  required="required" style="margin-top: 0.6%;" />
                                <br>
                                <br>
                                Password (max 10): *
                                <br>
                                <input type="password" name="password" size="10" maxlength="10" required="required" style="margin-top: 0.6%;" />
                                <br>
                                <br>
                                Confirma Password: *
                                <br>
                                <input type="password" name="password2" size="10" maxlength="10" required="required" style="margin-top: 0.6%;" />
                                <br>
                                <br>
                                Email (max 40): *
                                <br>
                                <input type="text" name="email" size="20" maxlength="40" required="required" style="margin-top: 0.6%;" />
                                <br>                
                                <img src="captcha.php" id="captcha" style="margin-top: 15px" /><br/><br>
                                <!-- CHANGE TEXT LINK -->
                                <a style="margin-left: 22px; text-decoration: underline;" href="" onClick="document.getElementById('captcha').src='captcha.php?'+Math.random();" id="change-image">RECARGAR CAPTCHA</a><br/><br/>
                            <p class="textocap" style="margin-top: -20px;"></p>  
                            <input placeholder="Escriba el captcha..." type="text" name="captcha" id="captcha-form" required="required"/>
                            <br>
                            <br>
                            <input id="miBoton" type="submit" value="REGISTRAR" /> <!--style="margin-top: 10px; float: left; width: 40%"--> 
                            <input id="miBoton" type="reset" value="LIMPIAR" name="reset" /> <!--style="margin-top: 10px; float: right; width: 40%"--> 
                            </p>
                        </form> 
                    </section>
                </section>
            </div> 	
            <?php
        }

// verificamos si se han enviado ya las variables necesarias.
        if (isset($_POST["user"]))
        {
            $user      = $_POST["user"];
            $nombre    = $_POST["username"];
            $cedula    = $_POST["cedula"];
            $password  = $_POST["password"];
            $password2 = $_POST["password2"];
            $email     = $_POST["email"];
            // Hay campos en blanco
            if ($user == NULL | $password == NULL | $password2 == NULL | $email == NULL)
            {
                echo "un campo est&aacute vacio.";
                formRegistro();
            }
            else
            {
                // �Coinciden las contrase�as?
                if ($password != $password2)
                {
                    echo "<script languaje='javascript'>alert('Las contraseñas no coinciden')</script>";
                    formRegistro();
                }
                else
                {
                    // Comprobamos si el nombre de usuario o la cuenta de correo ya exist�an
                    $checkuser   = mysql_query("SELECT login FROM usuario WHERE login='$user'");
                    $user_exist  = mysql_num_rows($checkuser);
                    $checkemail  = mysql_query("SELECT email FROM usuario WHERE email='$email'");
                    $email_exist = mysql_num_rows($checkemail);
                    if ($email_exist > 0 || $user_exist > 0)
                    {
                        echo "<script languaje='javascript'>alert('El nombre de usuario o la cuenta de correo estan ya en uso')</script>";
                        formRegistro();
                    }
                    else
                    {
                        /** Validate captcha */
                        if (!empty($_REQUEST['captcha']))
                        {

                            if (empty($_SESSION['captcha']) || trim(strtolower($_REQUEST['captcha'])) != $_SESSION['captcha'])
                            {
                                $captcha_message = "Captcha incorrecto";
                                $style           = "background-color: #FF606C";
                            }
                            else
                            {
                                $captcha_message = "Registro y Captcha Correctos!";
                                $style           = "background-color: #CCFF99";
                                $query           = 'INSERT INTO usuario (nombre, login, cedula , password, email, fecha_ingreso, rol)
				VALUES (\'' . $nombre . '\',\'' . $user . '\',\'' . $cedula . '\', \'' . $password . '\',\'' . $email . '\',\'' . date("Y-m-d") . '\',\'ALUMNO\')';
                                mysql_query($query) or die(mysql_error());
                                ?>
                                <META HTTP-EQUIV="REFRESH" CONTENT="3;URL=../index.php" >
                                <?php
                            }
                            $request_captcha = htmlspecialchars($_REQUEST['captcha']);
                            echo <<<HTML
        <div id="result" style="$style">
        <h3>$captcha_message</h3>
        </div>
HTML;
                            unset($_SESSION['captcha']);
                        }
                    }
                }
            }
        }
        else
        {
            formRegistro();
        }
        ?>