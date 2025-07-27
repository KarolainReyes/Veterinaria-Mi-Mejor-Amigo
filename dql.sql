 -- Cantidad total de mascotas
 
 SELECT COUNT(*) AS Cantidad FROM mascotas;
 
 -- Cantidad de mascotas por especie
 
 SELECT especie, COUNT(*) AS cantidad
 FROM mascotas
 GROUP BY especie;
 
 -- Edad promedio de las mascotas
 
 SELECT ROUND(AVG(edad),2)  AS Edad_Promedio FROM mascotas;
 
 -- Mascotas ordenadas por edad
 
 SELECT nombre, especie, raza, edad FROM mascotas
 ORDER BY edad ASC;
 
 -- Mascota mas longeva
 
 SELECT nombre, edad
 FROM mascotas
 WHERE edad = (SELECT MAX(edad) from mascotas);
 
 -- Mascota mas joven
 
  SELECT nombre, edad
 FROM mascotas
 WHERE edad = (SELECT MIN(edad) from mascotas);
 
 -- Servicios ordenados por precio (Mas barato a mas caro)
 
 SELECT * FROM servicios
 ORDER BY precio_base ASC;
 
 -- Cantidad de mascotas por dueño
 
 SELECT duenios.nombre, COUNT(mascotas.id_duenio) AS cantidad_mascotas
 FROM duenios
 JOIN mascotas ON mascotas.id_duenio = duenios.id_duenio
 GROUP BY duenios.nombre;
 
 -- Visitas por mascota especifica (Manchas)
	
SELECT visitas.fecha, mascotas.nombre AS nombre_mascota, servicios.nombre AS nombre_servicio
FROM visitas
JOIN mascotas ON visitas.id_mascota = mascotas.id_mascota
JOIN servicios ON visitas.id_servicio = servicios.id_servicio
WHERE visitas.id_mascota = 3;

-- Listado de mascotas con su dueño

SELECT mascotas.nombre AS Mascota, mascotas.edad AS Edad, mascotas.especie AS especie, duenios.nombre AS Duenio
FROM mascotas
JOIN duenios ON mascotas.id_duenio = duenios.id_duenio;

-- Razas en minuscula y su longitud

SELECT DISTINCT LOWER(raza) AS raza, LENGTH(raza) AS longitud 
FROM mascotas;

--  Especies que comienzan por la letra "C"

SELECT especie
FROM mascotas
WHERE especie LIKE 'C%';
 
-- Especies que terminan con la letra "A"alter

SELECT especie 
FROM mascotas
WHERE especie LIKE '%A';

-- Especies que tenga la letra "O" y razas que tengan la letra "A"

SELECT especie, raza
FROM mascotas
WHERE especie LIKE '%O%' AND raza LIKE '%A%';

-- Mascotas con su informacion descriptiva y estado de vacunacion

SELECT 
id_mascota AS ID,
CONCAT(nombre, " un/a ", LOWER(especie), " de raza ", raza, " de ", edad, " años ") AS Descripcion,
IF(vacunado = 1, 'Vacunado', 'No vacunado') AS Estado
FROM mascotas;

-- Mascotas con su apodo (primeras 3 letras)

SELECT nombre , SUBSTRING(nombre,1,3) AS apodo FROM mascotas;

-- Porcentaje de mascotas vacunadas y no vacunadas

SELECT 
ROUND(SUM(vacunado) * 100.0 / COUNT(*), 2) AS Vacunados,
ROUND(SUM(NOT vacunado) * 100.0 / COUNT(*), 2) AS No_vacunados
FROM mascotas;

-- Cantidad de mascotas por especie

SELECT especie, COUNT(*) AS cantidad
FROM mascotas
GROUP BY especie;