CREATE DATABASE cafeteria_db;
USE cafeteria_db;

CREATE TABLE producto(
	id_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY, producto VARCHAR (40), precio DOUBLE, stock INT
);

CREATE TABLE cliente(
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY, dni VARCHAR(8), apellido VARCHAR(20), nombre VARCHAR (40)
);

CREATE TABLE pedido(
	id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY, id_cliente INT, numero_factura VARCHAR (244), fecha_pedido DATE, monto DOUBLE,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)   
);

CREATE TABLE detalle_pedido(
	id_detalle_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY, id_pedido INT, id_producto INT, cantidad INT, subtotal DOUBLE,
    FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
    FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
    );
