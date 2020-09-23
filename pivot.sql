-- tabla base
SELECT  h.Doctor_idDoctor ID, d.nombre NOMBRE, d.apellido APELLIDO , s.desServicio SERVICIO, (precio_consulta) PRECIO, i.descripcionDiag DIAGNOSTICO
FROM hospital h
INNER JOIN doctor d ON h.Doctor_idDoctor=d.idDoctor 
INNER JOIN servicio s ON h.servicio_idServicio = s.idServicio 
INNER JOIN diagnostico i ON h.Diagnostico_idDiagnostico = i.idDiagnostico
GROUP BY SERVICIO, ID ORDER BY ID ASC;


-- pivot
SELECT  h.Doctor_idDoctor ID, d.nombre NOMBRE, d.apellido APELLIDO , s.desServicio SERVICIO, (precio_consulta) PRECIO, i.descripcionDiag DIAGNOSTICO
FROM hospital h
INNER JOIN doctor d ON h.Doctor_idDoctor=d.idDoctor 
INNER JOIN servicio s ON h.servicio_idServicio = s.idServicio 
INNER JOIN diagnostico i ON h.Diagnostico_idDiagnostico = i.idDiagnostico
GROUP BY SERVICIO, ID ORDER BY SERVICIO ASC;