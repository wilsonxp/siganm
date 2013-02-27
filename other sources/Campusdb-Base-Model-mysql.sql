
DROP DATABASE IF EXISTS CampusDb;
CREATE DATABASE CampusDb;
USE CampusDb;

CREATE TABLE IF NOT EXISTS `Usuario`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(256) NULL,
    `login` VARCHAR(256) NULL,
    `password` VARCHAR(256) NULL,
    `email` VARCHAR(256) NULL,
    `fecha_ingreso` DATE NULL,
    `rol` VARCHAR(256) NULL,
    `cedula` VARCHAR(256) NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Telefono`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `numero` VARCHAR(256) NULL,
    `extension` VARCHAR(256) NULL,
    `tipoTelefono` VARCHAR(256) NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Profesor`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombreCompleto` VARCHAR(256) NULL,
    `apellidoPaterno` VARCHAR(256) NULL,
    `apellidoMaterno` VARCHAR(256) NULL,
    `primerNombre` VARCHAR(256) NULL,
    `segundoNombre` VARCHAR(256) NULL,
    `edad` INT NULL,
    `fechaNacimiento` DATE NULL,
    `cedula` VARCHAR(256) NULL,
    `genero` VARCHAR(256) NULL,
    `estadoCivil` VARCHAR(256) NULL,
    `fechaIngreso` DATE NULL,
    `sitioWeb1` VARCHAR(256) NULL,
    `pais` INT NULL,
    `provincia` INT NULL,
    `email1` INT NULL,
    `email2` INT NULL,
    `telefono1` INT NULL,
    `movil1` INT NULL,
    `movil2` INT NULL,
    `domicilio` INT NULL,
    `direccionAdicional1` INT NULL,
    `titulo1` INT NULL,
    `titulo2` INT NULL,
    `titulo3` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Asignatura`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(256) NULL,
    `especialidad` VARCHAR(256) NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `ProfesorAsisnatura`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `asignatura` INT NULL,
    `profesor` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Malla`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(256) NULL,
    `fechaCreacion` DATE NULL,
    `descripcion` TEXT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `MallaAsisnatura`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `profesorAsisnatura` INT NULL,
    `malla` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Periodo`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `fechaInicio` DATE NULL,
    `fechaFin` DATE NULL,
    `descripcion` TEXT NULL,
    `malla` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Matricula`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `descripcion` TEXT NULL,
    `periodo` INT NULL,
    `alumno` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Notas`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `primerBimestre` VARCHAR(256) NULL,
    `segundoBimestre` VARCHAR(256) NULL,
    `examenPrimerBimestre` VARCHAR(256) NULL,
    `examensegundoBimestre` VARCHAR(256) NULL,
    `notaFinal` VARCHAR(256) NULL,
    `matricula` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `TargetNotas`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `fechaCreacion` DATE NULL,
    `fechamodificacion` DATE NULL,
    `modificadoPor` INT NULL,
    `notas` INT NULL,
    `matricula` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Alumno`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombreCompleto` VARCHAR(256) NULL,
    `apellidoPaterno` VARCHAR(256) NULL,
    `apellidoMaterno` VARCHAR(256) NULL,
    `primerNombre` VARCHAR(256) NULL,
    `segundoNombre` VARCHAR(256) NULL,
    `edad` INT NULL,
    `fechaNacimiento` DATE NULL,
    `cedula` VARCHAR(256) NULL,
    `genero` VARCHAR(256) NULL,
    `fechaIngreso` DATE NULL,
    `estadoCivil` INT NULL,
    `pais` INT NULL,
    `provincia` INT NULL,
    `email1` INT NULL,
    `email2` INT NULL,
    `email3` INT NULL,
    `telefonoAdicional1` INT NULL,
    `movil1` INT NULL,
    `movil2` INT NULL,
    `domicilio` INT NULL,
    `direccionAdicional1` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `EstadoCivil`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(256) NULL,
    `estado` INTEGER NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Titulo`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(256) NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Curso`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `curso` VARCHAR(256) NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Pais`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(256) NULL,
    `estado` INTEGER NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Direccion`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `callePrincipal` VARCHAR(256) NULL,
    `calleSecundaria` VARCHAR(256) NULL,
    `numero` VARCHAR(256) NULL,
    `referencia` VARCHAR(256) NULL,
    `direccionCompleta` VARCHAR(256) NULL,
    `correspondencia` BIT NULL,
    `cobro` BIT NULL,
    `ciudad` INT NULL,
    `sector` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Provincia`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(256) NULL,
    `estado` INTEGER NULL,
    `pais` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Ciudad`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(256) NULL,
    `estado` INTEGER NULL,
    `provincia` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Sector`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(256) NULL,
    `estado` TEXT NULL,
    `ciudad` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Email`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `direccion` VARCHAR(256) NULL,
    `descripcion` TEXT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Plantilla`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `asunto` VARCHAR(256) NULL,
    `mensaje` TEXT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SystemConfig`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `encuestaVisible` VARCHAR(256) NULL,
    `plantillaMatricula` INT NULL,
    `plantillaInscripcion` INT NULL,
    `plantillaNotas` INT NULL,
    PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

ALTER TABLE `Profesor`
    ADD CONSTRAINT 
        FOREIGN KEY (`pais`)
        REFERENCES `Pais` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`provincia`)
        REFERENCES `Provincia` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`email1`)
        REFERENCES `Email` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`email2`)
        REFERENCES `Email` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`telefono1`)
        REFERENCES `Telefono` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`movil1`)
        REFERENCES `Telefono` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`movil2`)
        REFERENCES `Telefono` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`domicilio`)
        REFERENCES `Direccion` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`direccionAdicional1`)
        REFERENCES `Direccion` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`titulo1`)
        REFERENCES `Titulo` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`titulo2`)
        REFERENCES `Titulo` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`titulo3`)
        REFERENCES `Titulo` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `ProfesorAsisnatura`
    ADD CONSTRAINT 
        FOREIGN KEY (`asignatura`)
        REFERENCES `Asignatura` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`profesor`)
        REFERENCES `Profesor` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `MallaAsisnatura`
    ADD CONSTRAINT 
        FOREIGN KEY (`profesorAsisnatura`)
        REFERENCES `ProfesorAsisnatura` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`malla`)
        REFERENCES `Malla` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Periodo`
    ADD CONSTRAINT 
        FOREIGN KEY (`malla`)
        REFERENCES `Malla` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Matricula`
    ADD CONSTRAINT 
        FOREIGN KEY (`periodo`)
        REFERENCES `Periodo` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`alumno`)
        REFERENCES `Alumno` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Notas`
    ADD CONSTRAINT 
        FOREIGN KEY (`matricula`)
        REFERENCES `Matricula` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `TargetNotas`
    ADD CONSTRAINT 
        FOREIGN KEY (`modificadoPor`)
        REFERENCES `Usuario` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`notas`)
        REFERENCES `Notas` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`matricula`)
        REFERENCES `Matricula` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Alumno`
    ADD CONSTRAINT 
        FOREIGN KEY (`estadoCivil`)
        REFERENCES `EstadoCivil` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`pais`)
        REFERENCES `Pais` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`provincia`)
        REFERENCES `Provincia` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`email1`)
        REFERENCES `Email` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`email2`)
        REFERENCES `Email` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`email3`)
        REFERENCES `Email` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`telefonoAdicional1`)
        REFERENCES `Telefono` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`movil1`)
        REFERENCES `Telefono` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`movil2`)
        REFERENCES `Telefono` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`domicilio`)
        REFERENCES `Direccion` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`direccionAdicional1`)
        REFERENCES `Direccion` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Direccion`
    ADD CONSTRAINT 
        FOREIGN KEY (`ciudad`)
        REFERENCES `Ciudad` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`sector`)
        REFERENCES `Sector` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Provincia`
    ADD CONSTRAINT 
        FOREIGN KEY (`pais`)
        REFERENCES `Pais` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Ciudad`
    ADD CONSTRAINT 
        FOREIGN KEY (`provincia`)
        REFERENCES `Provincia` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Sector`
    ADD CONSTRAINT 
        FOREIGN KEY (`ciudad`)
        REFERENCES `Ciudad` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `SystemConfig`
    ADD CONSTRAINT 
        FOREIGN KEY (`plantillaMatricula`)
        REFERENCES `Plantilla` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`plantillaInscripcion`)
        REFERENCES `Plantilla` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT 
        FOREIGN KEY (`plantillaNotas`)
        REFERENCES `Plantilla` (`id`)
        ON DELETE RESTRICT ON UPDATE RESTRICT
;

CREATE INDEX EstadoCivil_estado_idx
    ON EstadoCivil ( estado )
;

CREATE INDEX Pais_estado_idx
    ON Pais ( estado )
;

CREATE INDEX Provincia_estado_idx
    ON Provincia ( estado )
;

CREATE INDEX Ciudad_estado_idx
    ON Ciudad ( estado )
;

DELIMITER $$

CREATE FUNCTION decode_uuid (uuid BINARY(16))
RETURNS CHAR(36)
DETERMINISTIC
BEGIN
    RETURN lower(concat(
                hex(left(uuid,4)),'-',
                hex(mid(uuid,5,2)),'-',
                hex(mid(uuid,7,2)),'-',
                hex(mid(uuid,9,2)),'-',
                hex(right(uuid,6))
            ));
END$$

CREATE FUNCTION encode_uuid( uuid CHAR(36) )
RETURNS BINARY(16)
DETERMINISTIC
BEGIN
    RETURN unhex(replace(uuid, '-',''));
END$$

DELIMITER ;

INSERT INTO Usuario
    ( nombre,email,rol,login,password )
VALUES ( 'Administrador',null,'ADMINISTRADOR','admin','admin' );

INSERT INTO Pais
    ( nombre,estado )
VALUES ( 'ECUADOR','0' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'AZUAY','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'BOLIVAR','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'CANAR','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'CARCHI','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'CHIMBORAZO','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'COTOPAXI','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'EL ORO','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'ESMERALDAS','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'GALAPAGOS','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'GUAYAS','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'IMBABURA','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'LOJA','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'LOS RIOS','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'MANABI','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'MORONA SANTIAGO','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'NAPO','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'ORELLANA','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'PASTAZA','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'PICHINCHA','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'SANTA ELENA','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'STO. DOMINGO DE LOS TSACHILAS','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'SUCUMBIOS','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'TUNGURAHUA','0','1' );

INSERT INTO Provincia
    ( nombre,estado,pais )
VALUES ( 'ZAMORA CHINCHIPE','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CUENCA','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GIRON','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GUALACEO','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'NABON','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PAUTE','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PURACA','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN FERNANDO','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTA ISABEL','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SIGSIG','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ONA','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHORDELEG','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'EL PAN','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SEVILLA DE ORO','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GUACHAPALA','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CAMILO PONCE ENRIQUEZ','0','1' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GUARANDA','0','2' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHILLANES','0','2' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHIMBO','0','2' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ECHEANDIA','0','2' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN MIGUEL','0','2' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CALUMA','0','2' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LAS NAVES','0','2' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SALINAS','0','2' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHONTAMARCA','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'VENTURA','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN ANTONIO','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GUALLETURO','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'JUNCAL','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CANAR','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ZHUD','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'crm MORALES','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'DUCUR','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHOROCOPTE','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'INGAPAIRCA','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'HONORATO VASQUEZ','0','3' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'TULCAN','0','4' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ESPEJO','0','4' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MONTUFAR','0','4' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MIRA','0','4' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN PEDRO DE HUACA','0','4' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ALAUSI','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'COLTA','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CUMANDA','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHAMBO','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHUNCI','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GUAMOTE','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GUANO','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PALLATANGA','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PENIPE','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'RIOBAMBA','0','5' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LATACUNGA','0','6' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LA MANA','0','6' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PANGA','0','6' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PUJILI','0','6' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SALCEDO','0','6' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAQUISILI','0','6' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SIGCHOS','0','6' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ARENILLAS','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ATAHUALPA','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'BALSAS','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHILLA','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'EL GUABO','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'HUAQUILLAS','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LAS LAJAS','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MACHALA','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MARCABELI','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PASAJE','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PINAS','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'POTOVELO','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ZARUMA','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTA ROSA','0','7' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ESMERALDAS','0','8' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'QUININDE','0','8' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ELOY ALFARO','0','8' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MUISNE','0','8' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN LORENZO','0','8' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ATACAMES','0','8' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'RIO VERDE','0','8' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LA CONCORDIA','0','8' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ESMERALDAS','0','8' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN CRISTOBAL','0','9' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ISABEL','0','9' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTA CRUZ','0','9' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GUAYAQUIL','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ALFREDO BAQUERIZO MORENO','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'BALAO','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'BALZAR','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'COLIMES','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CORONEL MARCELINO MARIDUENA','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'DUALE','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'DURAN','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'EL EMPALME','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'EL TRIUNFO','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ISIDRO AYORA','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LOMAS DE SARGENTILLO','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MILAGRO','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'NARANJAL','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'NARANJITO','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'NOBOL','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PALESTINA','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PEDRO CARBO','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PLAYAS','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SALITRE','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAMBORONDON','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTA LUCIA','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SIMON BOLIVAR','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'YAGUACHI','0','10' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'IBARRA','0','11' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ANTONIO ANTE','0','11' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'COTACACHI','0','11' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'OTAVALO','0','11' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PIMAMPIRO','0','11' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN MIGUEL DE URCUQUI','0','11' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LOJA','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CLAVAS','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CATAMAYO','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CELICA','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHAGUARPAMBA','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ESPINDOLA','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GONZANAMA','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MACARA','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PALTAS','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PINDAL','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PUYANGO','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'QUILANGA','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SARAGURO','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SOZORANGA','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ZAPOTILLO','0','12' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'BABAHOYO','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'BABA','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'BUENA FE','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MOCACHE','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MONTALVO','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PALENQUE','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PUEBLOVIEJO','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'QUEVEDO','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'QUINSALOMA','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'URDETA','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'VALENCIA','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'VENTANAS','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'VINCES','0','13' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PORTOVIEJO','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'BOLIVAR','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHONE','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'EL CARMEN','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'FLAVIO ALFARO','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'JAMA','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'JARAMIJO','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'JUNIN','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'JIPIJAPA','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MANTA','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MONTECRISTI','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'OLMEDO','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PAJAN','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PEDERNALES','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PICHINCHA','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PUERTO LOPEZ','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ROCAFUERTE','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN VICENTE','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTA ANA','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SUCRE','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'TOSAGUA','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( '24 DE MAYO','0','14' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MORONA','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GUALAQUIZA','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LIMON INDANAZA','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LOGRONO','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PABLO SEXTO','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PALORA','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTIAGO','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SUCUA','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAMBOYA','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN JUAN BOSCO','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'TAISHA','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'TIWINTZA','0','15' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'TENA','0','16' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ARCHIDONA','0','16' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CARLOS JULIO AROSEMENA TOLA','0','16' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'EL CHACO','0','16' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'QUIJOS','0','16' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ORELLANA','0','17' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'AGUARICO','0','17' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LA JOYA DE LOS SACHAS','0','17' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LORETO','0','17' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PASTAZA','0','18' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ARAJUNO','0','18' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MERA','0','18' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTA CLARA','0','18' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'QUITO','0','19' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CAYAMBE','0','19' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MEJIA','0','19' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PEDRO MONCAYO','0','19' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PEDRO VICNETE MALDONADO','0','19' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PUERTO QUITO','0','19' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'RUMINAHUI','0','19' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN MIGUEL DE LOS BANCOS','0','19' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTA ELENA','0','20' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LIBERTAD','0','20' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SALINAS','0','20' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTO DOMINGO DE LOS COLORADOS','0','21' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'LAGO AGRIO','0','22' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CASCALES','0','22' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CUYABENO','0','22' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'GONZALO PIZARRO','0','22' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PUTUMAYO','0','22' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SHUSHUFINDI','0','22' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SUCUMBIOS','0','22' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'AMBATO','0','23' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'BANOS','0','23' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CEVALLOS','0','23' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'MOCHA','0','23' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PATATE','0','23' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'QUERO','0','23' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SAN PEDRO DE PELILEO','0','23' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'SANTIAGO DE PILLARO','0','23' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'TISALEO','0','23' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'ZAMORA','0','24' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CHINCHIPE','0','24' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'NANGARITZA','0','24' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PALANDA','0','24' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'PAQUISHA','0','24' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'YACUAMBI','0','24' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'YANTZAZA','0','24' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'EL PAGUI','0','24' );

INSERT INTO Ciudad
    ( nombre,estado,provincia )
VALUES ( 'CENTINELA DEL CONDOR','0','24' );

CREATE VIEW DominioSeguridad
AS
    SELECT login, password, rol AS grupo
    FROM Usuario
    WHERE NOT (login IS NULL);

CREATE TABLE IF NOT EXISTS `META_INF`
(
    `uuidStrategy` varchar(255) NULL
)
ENGINE = InnoDB;

INSERT INTO `META_INF`
	(`uuidStrategy`)
VALUES ('BINARY');


