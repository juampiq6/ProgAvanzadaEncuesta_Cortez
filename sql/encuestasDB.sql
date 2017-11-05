SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS encuestasDB;
USE encuestasDB;
CREATE TABLE `domicilio`(
    `idDomicilio` INT(11) NOT NULL,
    `Calle` VARCHAR(45) NOT NULL,
    `Numero` INT(11) DEFAULT NULL,
    `Dpto` VARCHAR(45) DEFAULT NULL,
    `Piso` VARCHAR(45) DEFAULT NULL,
    `FkLocalidad` INT(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta`(
    `idEncuesta` INT(11) NOT NULL,
    `EncuestaNomb` VARCHAR(45) NOT NULL,
    `Descripcion` VARCHAR(200) NOT NULL,
    `FkPersonaCuil` INT(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `estadocivil`
--

CREATE TABLE `estadocivil`(
    `idEstadoCivil` INT(11) NOT NULL,
    `NomEstCiv` VARCHAR(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero`(
    `idGenero` INT(11) NOT NULL,
    `NombreGenero` VARCHAR(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad`(
    `idLocalidad` INT(11) NOT NULL,
    `NomLocalidad` VARCHAR(150) DEFAULT NULL,
    `FkProvincia` INT(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais`(
    `idPais` INT(11) NOT NULL,
    `NomPais` VARCHAR(150) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona`(
    `idPersona` INT(11) NOT NULL,
    `Nom` VARCHAR(45) NOT NULL,
    `Apellido` VARCHAR(45) NOT NULL,
    `ApellidoMaterno` VARCHAR(45) DEFAULT NULL,
    `DNI` INT(8) NOT NULL,
    `CUIL` INT(11) NOT NULL,
    `FechNac` DATE NOT NULL,
    `FkLugarNac` INT(11) DEFAULT NULL,
    `FkEstadoCivil` INT(11) NOT NULL,
    `FkGenero` INT(11) NOT NULL,
    `FkDomicilio` INT(11) NOT NULL,
    `PersonaTipo` VARCHAR(45) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta`(
    `idPregunta` INT(11) NOT NULL,
    `Pregunta` VARCHAR(200) NOT NULL,
    `Respuesta` VARCHAR(200) DEFAULT NULL,
    `FKEncuesta` INT(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia`(
    `idProvincia` INT(11) NOT NULL,
    `NomProvincia` VARCHAR(150) DEFAULT NULL,
    `FkPais` INT(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------
--

-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user`(
    `idUser` INT(11) NOT NULL,
    `NombreUsuario` VARCHAR(45) NOT NULL,
    `Contraseña` VARCHAR(45) NOT NULL,
    `FkPersona` INT(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--

-- Índices para tablas volcadas
--

--

-- Indices de la tabla `domicilio`
--

ALTER TABLE
    `domicilio` ADD PRIMARY KEY(`idDomicilio`),
    ADD UNIQUE KEY `idDomicilio_UNIQUE`(`idDomicilio`),
    ADD KEY `FkLocalidad_idx`(`FkLocalidad`);
    --

    -- Indices de la tabla `encuesta`
    --

ALTER TABLE
    `encuesta` ADD PRIMARY KEY(`idEncuesta`),
    ADD UNIQUE KEY `idEncuesta_UNIQUE`(`idEncuesta`),
    ADD KEY `FkPersona_idx`(`FkPersonaCuil`);
    --

    -- Indices de la tabla `estadocivil`
    --

ALTER TABLE
    `estadocivil` ADD PRIMARY KEY(`idEstadoCivil`),
    ADD UNIQUE KEY `idEstadoCivil_UNIQUE`(`idEstadoCivil`);
    --

    -- Indices de la tabla `genero`
    --

ALTER TABLE
    `genero` ADD PRIMARY KEY(`idGenero`),
    ADD UNIQUE KEY `idPersona_UNIQUE`(`idGenero`);
    --

    -- Indices de la tabla `localidad`
    --

ALTER TABLE
    `localidad` ADD PRIMARY KEY(`idLocalidad`),
    ADD UNIQUE KEY `idLocalidad_UNIQUE`(`idLocalidad`),
    ADD KEY `FkProvincia_idx`(`FkProvincia`);
    --

    -- Indices de la tabla `pais`
    --

ALTER TABLE
    `pais` ADD PRIMARY KEY(`idPais`),
    ADD UNIQUE KEY `idPais_UNIQUE`(`idPais`);
    --

    -- Indices de la tabla `persona`
    --

ALTER TABLE
    `persona` ADD PRIMARY KEY(`CUIL`),
    ADD UNIQUE KEY `idPersona_UNIQUE`(`idPersona`),
    ADD KEY `FkLugarNac_idx`(`FkLugarNac`),
    ADD KEY `FkEstadoCivil_idx`(`FkEstadoCivil`),
    ADD KEY `FkGenero_idx`(`FkGenero`),
    ADD KEY `FkDomicilio_idx`(`FkDomicilio`);
    --

    -- Indices de la tabla `pregunta`
    --

ALTER TABLE
    `pregunta` ADD PRIMARY KEY(`idPregunta`),
    ADD UNIQUE KEY `idPregunta_UNIQUE`(`idPregunta`),
    ADD KEY `FKEncuesta_idx`(`FKEncuesta`);
    --

    -- Indices de la tabla `provincia`
    --

ALTER TABLE
    `provincia` ADD PRIMARY KEY(`idProvincia`),
    ADD UNIQUE KEY `idProvincia_UNIQUE`(`idProvincia`),
    ADD KEY `FkPais_idx`(`FkPais`);
    --

    -- Indices de la tabla `user`
    --

ALTER TABLE
    `user` ADD PRIMARY KEY(`NombreUsuario`),
    ADD UNIQUE KEY `idUser_UNIQUE`(`idUser`),
    ADD KEY `FkPersona_idx`(`FkPersona`);
    --

    -- AUTO_INCREMENT de las tablas volcadas
    --

    --

    -- AUTO_INCREMENT de la tabla `domicilio`
    --

ALTER TABLE
    `domicilio` MODIFY `idDomicilio` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT de la tabla `encuesta`
    --

ALTER TABLE
    `encuesta` MODIFY `idEncuesta` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT de la tabla `estadocivil`
    --

ALTER TABLE
    `estadocivil` MODIFY `idEstadoCivil` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT de la tabla `genero`
    --

ALTER TABLE
    `genero` MODIFY `idGenero` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT de la tabla `localidad`
    --

ALTER TABLE
    `localidad` MODIFY `idLocalidad` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT de la tabla `pais`
    --

ALTER TABLE
    `pais` MODIFY `idPais` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT de la tabla `persona`
    --

ALTER TABLE
    `persona` MODIFY `idPersona` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT de la tabla `pregunta`
    --

ALTER TABLE
    `pregunta` MODIFY `idPregunta` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT de la tabla `provincia`
    --

ALTER TABLE
    `provincia` MODIFY `idProvincia` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT de la tabla `user`
    --

ALTER TABLE
    `user` MODIFY `idUser` INT(11) NOT NULL AUTO_INCREMENT;
    --

    -- Restricciones para tablas volcadas
    --

    --

    -- Filtros para la tabla `domicilio`
    --

ALTER TABLE
    `domicilio` ADD CONSTRAINT `FkLocalidad` FOREIGN KEY(`FkLocalidad`) REFERENCES `localidad`(`idLocalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;
    --

    -- Filtros para la tabla `encuesta`
    --

ALTER TABLE
    `encuesta` ADD CONSTRAINT `FkPersonaCuil` FOREIGN KEY(`FkPersonaCuil`) REFERENCES `persona`(`CUIL`) ON DELETE NO ACTION ON UPDATE NO ACTION;
    --

    -- Filtros para la tabla `localidad`
    --

ALTER TABLE
    `localidad` ADD CONSTRAINT `FkProvincia` FOREIGN KEY(`FkProvincia`) REFERENCES `provincia`(`idProvincia`) ON DELETE NO ACTION ON UPDATE NO ACTION;
    --

    -- Filtros para la tabla `persona`
    --

ALTER TABLE
    `persona` ADD CONSTRAINT `FkDomicilio` FOREIGN KEY(`FkDomicilio`) REFERENCES `domicilio`(`idDomicilio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `FkEstadoCivil` FOREIGN KEY(`FkEstadoCivil`) REFERENCES `estadocivil`(`idEstadoCivil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `FkGenero` FOREIGN KEY(`FkGenero`) REFERENCES `genero`(`idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `FkLugarNac` FOREIGN KEY(`FkLugarNac`) REFERENCES `localidad`(`idLocalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;
    --

    -- Filtros para la tabla `pregunta`
    --

ALTER TABLE
    `pregunta` ADD CONSTRAINT `FKEncuesta` FOREIGN KEY(`FKEncuesta`) REFERENCES `encuesta`(`idEncuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION;
    --

    -- Filtros para la tabla `provincia`
    --

ALTER TABLE
    `provincia` ADD CONSTRAINT `FkPais` FOREIGN KEY(`FkPais`) REFERENCES `pais`(`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION;
    --

    -- Filtros para la tabla `user`
    --

ALTER TABLE
    `user` ADD CONSTRAINT `FkPersona` FOREIGN KEY(`FkPersona`) REFERENCES `persona`(`CUIL`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET
    FOREIGN_KEY_CHECKS = 1;
COMMIT
    ;