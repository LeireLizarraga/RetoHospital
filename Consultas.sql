--CONSULTAS--
--1. Nombre y fecha de toma de posesión de los médicos pediatras del hospital.--
--Select de la tabla--
SELECT * FROM Hospital.Medicos
--Actividad 1--
SELECT Nombre_del_Medico, Fecha_de_Ingreso
FROM Hospital.Medicos
WHERE Especialidad = 'Pediatria'

--2. Nombre de los pacientes residentes en Madrid capital.--
--Select de la tabla--
SELECT * FROM Hospital.Pacientes
--Actividad 2--
SELECT Nombre
FROM Hospital.Pacientes
WHERE Poblacion = 'Madrid'

--3. Nombre de los médicos que autorizaron ingresos entre enero y febrero de 2010.--
--Select de la tabla--
SELECT * FROM Hospital.Ingresos
SELECT * FROM Hospital.Medicos
--Actividad 3--
SELECT M.Nombre_del_Medico
FROM Hospital.Ingresos AS I
JOIN Hospital.Medicos AS M
ON I.Codigo_de_Identificacion = M.Codigo_Identificacion
WHERE I.Fecha_de_Ingreso BETWEEN '01/01/2010' AND '28/02/2010'

--4. Nombres y apellidos de los pacientes que ingresaron entre enero y mayo de 2009 y son alérgicos.--
--Select de la tabla--
SELECT * FROM Hospital.Ingresos
SELECT * FROM Hospital.Pacientes
--Actividad 4--
SELECT P.Nombre, P.Apellidos
FROM Hospital.Ingresos AS I
JOIN Hospital.Pacientes AS P
ON I.Numero_de_Historial = P.Numero_de_Historial
WHERE Fecha_de_Ingreso BETWEEN '01/01/2010' AND '28/02/2010' AND Alergico = 'True'

--5. Pacientes cuyo ingreso haya sido autorizado por el doctor Antonio Jaén Hernández.--
--Select de la tabla--
SELECT * FROM Hospital.Ingresos
SELECT * FROM Hospital.Medicos
SELECT * FROM Hospital.Pacientes
--Acvidad 5--
SELECT P.Nombre, P.Apellidos
FROM Hospital.Pacientes AS P
JOIN Hospital.Ingresos AS I
ON P.Numero_de_Historial = I.Numero_de_Historial
JOIN Hospital.Medicos AS M
ON M.Codigo_Identificacion = I.Codigo_de_Identificacion
WHERE I.Codigo_de_Identificacion = 'AJH'