/*
====================================================
 Proyecto: Sistema AgroIndustria
 Autora: Belén
 Rol: Data Analyst Jr / Business Analyst
 Base de datos: MySQL
 Descripción:
   Archivo de consultas SQL para análisis y gestión
   del sistema de alquileres de vehículos.
====================================================
*/
USE  agro_analyst;
-- ================================
-- 4. INSIGHT
-- ================================

-- a. Provincias con mayor actividad agrícola (más campañas registradas).
SELECT p.nombre AS provincia,
COUNT(*) AS cantidad_compania
FROM campanias ca
JOIN campos c ON ca.campoId = c.campoId
JOIN provincias p ON c.provinciaId = p.provinciaID
GROUP BY p.nombre
HAVING COUNT(*) > 2 ;

-- b. Producción total por provincia

SELECT p.nombre AS provincia,
SUM(ca.rendimiento_tn) AS produccion_total_tn
FROM campanias ca
JOIN campos c ON ca.campoId = c.campoId
JOIN provincias p ON c.provinciaId = p.provinciaID
GROUP BY p.nombre
HAVING provincia = 'Tucuman';

-- c. Mayor rendimiento registrado por provincia
SELECT p.nombre AS provincia,
MAX(ca.rendimiento_tn) AS max_rendimiento
FROM campanias ca
JOIN campos c ON ca.campoId = c.campoId
JOIN provincias p ON c.provinciaId = p.provinciaID
GROUP BY p.nombre;

-- c. Minimo rendimiento registrado por provincia
SELECT p.nombre AS provincia,
MIN(ca.rendimiento_tn) AS min_rendimiento
FROM campanias ca
JOIN campos c ON ca.campoId = c.campoId
JOIN provincias p ON c.provinciaId = p.provinciaID
GROUP BY p.nombre;

-- d. Campañas correctamente asociadas a una provincia.
SELECT 
    ca.campaniaID,
    p.nombre AS provincia,
    ca.anio
FROM campanias ca
INNER JOIN campos c 
    ON ca.campoId = c.campoId
INNER JOIN provincias p
    ON c.provinciaId = p.provinciaID;
    
-- e. Campos que todavía no tuvieron campañas registradas.
SELECT 
    c.campoId,
    p.nombre AS provincia,
    ca.campaniaID
FROM campos c
LEFT JOIN campanias ca 
    ON c.campoId = ca.campoId
LEFT JOIN provincias p 
    ON c.provinciaId = p.provinciaID;

SELECT * FROM campos;
SELECT * FROM campanias;