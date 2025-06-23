-- Crear la base de datos "matriculas"
CREATE SCHEMA IF NOT EXISTS `matriculas` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `matriculas`;

-- -----------------------------------------------------
--                Tabla Universidad
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `matriculas`.`universidad` (
    `codigo` INTEGER NOT NULL,
    `nombre` VARCHAR(40),
    `provincia_uni` VARCHAR(30),
    `privada` BOOLEAN,
    PRIMARY KEY (`codigo`)
);

-- -----------------------------------------------------
--                Tabla Estudiante
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `matriculas`.`estudiante` (
    `NIF` VARCHAR(9) NOT NULL,
    `nombre` VARCHAR(30),
    `apellidos` VARCHAR(70),
    `fecha_nacimiento` DATE,
    `direccion` VARCHAR(50),
    `provincia` VARCHAR(30),
    `importe_matricula` FLOAT(6 , 2 ),
    `becado` BOOLEAN,
    `codigo_uni` INTEGER NOT NULL,
    PRIMARY KEY (`NIF`),
    CONSTRAINT `matr_cod_uni` FOREIGN KEY (`codigo_uni`)
        REFERENCES `matriculas`.`universidad` (`codigo`)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- Insertar universidades
-- Insertar universidades
INSERT INTO `matriculas`.`universidad` (`codigo`, `nombre`, `provincia_uni`, `privada`) VALUES
(1, 'Universidad de Granada', 'GRANADA', FALSE),
(2, 'Universidad de Sevilla', 'SEVILLA', FALSE),
(3, 'Universidad de Almeria', 'ALMERIA', FALSE),
(4, 'Universidad de Málaga', 'MÁLAGA', TRUE),
(5, 'Universidad de Córdoba', 'CÓRDOBA', FALSE);

-- Insertar estudiantes
INSERT INTO `matriculas`.`estudiante` (`NIF`, `nombre`, `apellidos`, `fecha_nacimiento`, `direccion`, `provincia`, `importe_matricula`, `becado`, `codigo_uni`) VALUES
('12345678A', 'Juan', 'Pérez López', '2000-05-14', 'Calle Mayor 10', 'GRANADA', 1500.00, FALSE, 1),
('23456789B', 'María', 'García Martínez', '1999-11-22', 'Avenida Sol 20', 'SEVILLA', 0.00, TRUE, 2),
('34567890C', 'Carlos', 'Sánchez Ruiz', '2001-03-02', 'Calle Luna 5', 'ALMERIA', 2000.75, FALSE, 3),
('45678901D', 'Lucía', 'Martínez Gómez', '2000-12-15', 'Plaza Real 7', 'GRANADA', 1300.00, TRUE, 1),
('56789012E', 'Ana', 'López Fernández', '1998-06-20', 'Avenida Mar 30', 'MÁLAGA', 1750.00, FALSE, 4),
('67890123F', 'David', 'Gómez Torres', '2001-09-08', 'Calle Estrella 12', 'ALMERIA', 0.00, TRUE, 3),
('78901234G', 'Laura', 'Ruiz Sánchez', '2002-01-25', 'Calle Jardín 45', 'GRANADA', 1600.50, FALSE, 1),
('89012345H', 'Pedro', 'Hernández Ortega', '1999-04-18', 'Calle Sol 22', 'SEVILLA', 0.00, TRUE, 2),
('90123456I', 'Elena', 'Ramírez Díaz', '2000-07-30', 'Avenida Verde 8', 'ALMERIA', 1400.75, FALSE, 3),
('01234567J', 'Sofía', 'Navarro Sánchez', '2001-10-12', 'Calle Azul 11', 'CÓRDOBA', 1200.00, TRUE, 5);





