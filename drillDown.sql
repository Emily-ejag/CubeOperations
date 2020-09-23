--  tabla base
SELECT  h.Doctor_idDoctor ID, d.nombre NOMBRE, d.apellido APELLIDO , s.desServicio SERVICIO, fecha.`num year` ANIO, (precio_consulta) PRECIO
FROM hospital h
INNER JOIN doctor d ON h.Doctor_idDoctor=d.idDoctor 
INNER JOIN servicio s ON h.servicio_idServicio = s.idServicio 
INNER JOIN fecha ON fecha_idfecha = hospital.fecha.idfecha
GROUP BY SERVICIO, ID;


-- drill down para consulta medica por servicio y por doctor año
SELECT  h.Doctor_idDoctor ID, d.nombre NOMBRE, d.apellido APELLIDO , s.desServicio SERVICIO , i.descripcionDiag DIAGNOSTICO, (precio_consulta) PRECIO, fecha.`num year` ANIO
FROM hospital h
INNER JOIN doctor d ON h.Doctor_idDoctor=d.idDoctor 
INNER JOIN servicio s ON h.servicio_idServicio = s.idServicio 
INNER JOIN diagnostico i ON h.Diagnostico_idDiagnostico = i.idDiagnostico
INNER JOIN fecha ON fecha_idfecha = hospital.fecha.idfecha
GROUP BY SERVICIO, ID;
