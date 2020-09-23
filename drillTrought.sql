-- tabla base
SELECT  h.Doctor_idDoctor ID, d.nombre NOMBRE, d.apellido APELLIDO , sum(precio_consulta) TOTAL
FROM hospital h
INNER JOIN doctor d ON h.Doctor_idDoctor=d.idDoctor 
GROUP BY ID;


-- drill trought para consulta medica por servicio y por doctor año
SELECT  h.Doctor_idDoctor ID, d.nombre NOMBRE, d.apellido APELLIDO ,sexo.nombre SEXO, 
s.desServicio SERVICIO, (precio_consulta) PRECIO, i.descripcionDiag DIAGNOSTICO, fecha.fecha
FROM hospital h
INNER JOIN doctor d ON h.Doctor_idDoctor=d.idDoctor 
INNER JOIN servicio s ON h.servicio_idServicio = s.idServicio 
INNER JOIN diagnostico i ON h.Diagnostico_idDiagnostico = i.idDiagnostico
INNER JOIN fecha ON fecha_idfecha = hospital.fecha.idfecha
INNER JOIN sexo ON Sexo_idSexo = hospital.sexo.idSexo
GROUP BY SERVICIO, ID;

