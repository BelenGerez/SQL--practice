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
-- 4. CONSULTAS BÁSICAS
-- ================================

SELECT * FROM rentingsdb2.alquileres;

-- Obtener todos los alquileres

SELECT * FROM Alquileres;

-- Eliminar un registro 

DELETE FROM alquileres
WHERE alquilerId = 1 ;

-- Alquileres con precio mayor a 300

SELECT alquilerId, ClienteId, precio
FROM alquileres
WHERE precio > 300;

-- Marca de coches disponibles

SELECT DISTINCT marca FROM coches

-- Alquileres mayor a 185

select * from alquileres
WHERE precio > 185;

-- Alquileres donde los dias 

SELECT * FROM alquileres
WHERE diasrenting between 4 and 7;

-- Ordenar alquileres

SELECT * FROM rentingsdb2. clientes;

SELECT * FROM clientes
order by apellido asc 
limit 2;

-- Total de alquileres registrados
   -- Objetivo: medir volumen de operaciones

SELECT COUNT(*) AS total_alquileres 
FROM alquileres;
