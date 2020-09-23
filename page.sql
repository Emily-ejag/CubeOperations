-- page base
SELECT  h.Doctor_idDoctor ID, d.nombre NOMBRE, d.apellido APELLIDO , 
s.desServicio SERVICIO,i.descripcionDiag DIAGNOSTICO, fecha.`num year` ANIO, (precio_consulta) PRECIO 
FROM hospital h
INNER JOIN doctor d ON h.Doctor_idDoctor=d.idDoctor 
INNER JOIN servicio s ON h.servicio_idServicio = s.idServicio AND (s.desServicio='CONSULTA MEDICA' OR s.desServicio='PSIQUIATRIA') 
INNER JOIN diagnostico i ON h.Diagnostico_idDiagnostico = i.idDiagnostico
INNER JOIN fecha ON fecha_idfecha = hospital.fecha.idfecha
GROUP BY SERVICIO, ID;

-- page1 
SELECT  h.Doctor_idDoctor ID, d.nombre NOMBRE, d.apellido APELLIDO , 
s.desServicio SERVICIO,i.descripcionDiag DIAGNOSTICO, fecha.`num year` ANIO, (precio_consulta) PRECIO 
FROM hospital h
INNER JOIN doctor d ON h.Doctor_idDoctor=d.idDoctor 
INNER JOIN servicio s ON h.servicio_idServicio = s.idServicio AND s.desServicio='PSIQUIATRIA'
INNER JOIN diagnostico i ON h.Diagnostico_idDiagnostico = i.idDiagnostico
INNER JOIN fecha ON fecha_idfecha = hospital.fecha.idfecha
GROUP BY SERVICIO, ID;

-- page2
SELECT  h.Doctor_idDoctor ID, d.nombre NOMBRE, d.apellido APELLIDO , 
s.desServicio SERVICIO,i.descripcionDiag DIAGNOSTICO, fecha.`num year` ANIO, (precio_consulta) PRECIO 
FROM hospital h
INNER JOIN doctor d ON h.Doctor_idDoctor=d.idDoctor 
INNER JOIN servicio s ON h.servicio_idServicio = s.idServicio AND s.desServicio='CONSULTA MEDICA'
INNER JOIN diagnostico i ON h.Diagnostico_idDiagnostico = i.idDiagnostico
INNER JOIN fecha ON fecha_idfecha = hospital.fecha.idfecha
GROUP BY SERVICIO, ID;