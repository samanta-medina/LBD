use PuntoDeVenta

SELECT tr.nombreCompleto as 'Nombre', p.descripcion_Puesto as 'Puesto'
FROM Trabajadores as tr
INNER JOIN Puesto as p ON tr.puesto = p.puesto_id;

SELECT inv.cantidad
FROM Inventario as inv
INNER JOIN ticketDetalle as tDet ON inv.cantidad = tDet.cantidad;

SELECT suc.sucursal_id as 'Sucursal', dom.ComputedColumn as 'Dirección'
FROM Domicilio as dom
INNER JOIN Sucursales as suc ON dom.domicilio_id = suc.domicilio;

SELECT prov.nombre, inv.producto, inv.cantidad
FROM Inventario as inv
INNER JOIN Proveedores as prov ON prov.nombre = inv.producto

SELECT turno, COUNT(turno) as 'Trabajadores por turno'
FROM Trabajadores
GROUP BY turno;

SELECT puesto, COUNT(puesto) as 'Cantidad Trabajadores'
FROM Trabajadores
GROUP BY puesto;

SELECT marca, COUNT(marca) as 'Productos'
FROM Productos
GROUP BY marca;

SELECT fechaNac as 'fecha'
FROM Trabajadores
GROUP BY fechaNac