/*
====================================================
 Proyecto: Sistema de Alquiler de Vehículos
 Autora: Belén
 Rol: Data Analyst Jr / Business Analyst
 Base de datos: MySQL
 Descripción:
   Archivo de consultas SQL para análisis y gestión
   del sistema de alquileres de vehículos.
====================================================
*/
USE rentingsdb2;
-- ================================
-- 1. CREACIÓN DE TABLAS
-- ================================

CREATE TABLE Alquileres (
    alquilerId INT(5) NOT NULL AUTO_INCREMENT,
    clienteId INT(5) NOT NULL,
    cocheId INT(5) NOT NULL,
    seguroId INT(5) NOT NULL,
    PRIMARY KEY (alquilerId)
);