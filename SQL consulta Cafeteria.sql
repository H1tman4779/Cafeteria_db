USE cafeteria_db;

SELECT * FROM PEDIDO;

SELECT * FROM detalle_pedido;

SELECT id_pedido, id_det_ped, pedido.dni, producto.producto, cantidad FROM detalle_pedido
INNER JOIN pedido ON cliente.dni = pedido.dni
INNER JOIN producto ON detalle_pedido.id_prod = producto.id_prod
ORDER BY id_pedido;

select * from cliente;

select * from producto;
