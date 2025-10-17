--Insertar valores a camiones
INSERT INTO Camiones VALUES
(101, 'ABC1234', 1001, 'PLT01', 'Disponible', 8, 'M3'),
(102, 'BCD2345', 1002, 'PLT01', 'En ruta', 10, 'M3'),
(103, 'CDE3456', 1003, 'PLT02', 'Mantenimiento', 7, 'M3'),
(104, 'DEF4567', 1004, 'PLT02', 'Disponible', 12, 'M3'),
(105, 'EFG5678', 1005, 'PLT03', 'En ruta', 9, 'M3'),
(106, 'FGH6789', 1006, 'PLT03', 'Disponible', 8, 'M3'),
(107, 'GHI7890', 1007, 'PLT01', 'Disponible', 11, 'M3'),
(108, 'HIJ8901', 1008, 'PLT02', 'Mantenimiento', 10, 'M3'),
(109, 'IJK9012', 1009, 'PLT03', 'En ruta', 7, 'M3'),
(110, 'JKL0123', 1010, 'PLT01', 'Disponible', 12, 'M3');

SELECT * FROM Camiones

--Insertar valores a Choferes
INSERT INTO Choferes VALUES
(1001, 'Juan P�rez', 'LIC12345', '555-123-4567', 'Activo'),
(1002, 'Mar�a L�pez', 'LIC23456', '555-234-5678', 'Activo'),
(1003, 'Carlos Ram�rez', 'LIC34567', '555-345-6789', 'Inactivo'),
(1004, 'Ana Torres', 'LIC45678', '555-456-7890', 'Activo'),
(1005, 'Luis Hern�ndez', 'LIC56789', '555-567-8901', 'Activo'),
(1006, 'Sof�a G�mez', 'LIC67890', '555-678-9012', 'Activo'),
(1007, 'Miguel S�nchez', 'LIC78901', '555-789-0123', 'Activo'),
(1008, 'Laura D�az', 'LIC89012', '555-890-1234', 'Suspendido'),
(1009, 'Pedro Castillo', 'LIC90123', '555-901-2345', 'Activo'),
(1010, 'Elena Morales', 'LIC01234', '555-012-3456', 'Activo');

SELECT * FROM Choferes

--Insertar valores a Empleados
INSERT INTO Empleados VALUES
(201, 'Jos�', 'Mart�nez L�pez', 5551112233, 'jose.martinez@concretera.com', 'Construcci�n', 18000, 'Operador de Planta', 1, '2021-03-15', NULL),
(202, 'Mar�a', 'Gonz�lez P�rez', 5552223344, 'maria.gonzalez@concretera.com', 'Residencial', 22000, 'Ingeniera de Calidad', 2, '2020-07-01', NULL),
(203, 'Carlos', 'Ram�rez Torres', 5553334455, 'carlos.ramirez@concretera.com', 'Industrial', 25000, 'Supervisor de Producci�n', 1, '2019-05-20', NULL),
(204, 'Ana', 'Hern�ndez D�az', 5554445566, 'ana.hernandez@concretera.com', 'Infraestructura', 19500, 'T�cnica de Laboratorio', 2, '2022-01-10', NULL),
(205, 'Luis', 'S�nchez Morales', 5555556677, 'luis.sanchez@concretera.com', 'Construcci�n', 17000, 'Auxiliar Administrativo', 3, '2023-06-05', NULL),
(206, 'Laura', 'Fern�ndez Castro', 5556667788, 'laura.fernandez@concretera.com', 'Residencial', 21000, 'Ingeniera de Seguridad', 4, '2021-09-18', NULL),
(207, 'Miguel', 'Dom�nguez Ruiz', 5557778899, 'miguel.dominguez@concretera.com', 'Industrial', 28000, 'Gerente de Planta', 1, '2018-11-30', NULL),
(208, 'Sof�a', 'Vargas Rojas', 5558889900, 'sofia.vargas@concretera.com', 'Construcci�n', 16000, 'Asistente de Ventas', 5, '2022-08-12', NULL),
(209, 'Pedro', 'Castillo Jim�nez', 5559990011, 'pedro.castillo@concretera.com', 'Infraestructura', 18500, 'Operador de Cami�n', 6, '2020-04-03', NULL),
(210, 'Elena', 'Morales Flores', 5550001122, 'elena.morales@concretera.com', 'Residencial', 23000, 'Coordinadora de Log�stica', 3, '2019-02-21', NULL);

SELECT * FROM Empleados

INSERT INTO Roles VALUES
('Gerente de Planta', 'Encargado de supervisar toda la operaci�n de la planta concretera.', 1, 'PLT', 'RW', 'A'),
('Supervisor de Producci�n', 'Supervisa la producci�n de concreto, asegurando cumplimiento de recetas y calidad.', 1, 'PLT', 'RW', 'A'),
('Ingeniero de Calidad', 'Realiza pruebas de laboratorio y controla calidad del producto.', 2, 'PLT', 'RW', 'A'),
('Operador de Planta', 'Maneja el sistema de mezclado y producci�n del concreto.', 1, 'PLT', 'RW', 'A'),
('Operador de Cami�n', 'Conduce y entrega el producto a obra.', 6, 'OBR', 'R', 'A'),
('Auxiliar Administrativo', 'Apoya en tareas de oficina y gesti�n documental.', 3, 'ADM', 'RW', 'A'),
('Coordinador de Log�stica', 'Organiza las rutas de entrega y disponibilidad de camiones.', 3, 'ADM', 'RW', 'A'),
('T�cnico de Mantenimiento', 'Encargado de dar mantenimiento preventivo y correctivo a los equipos.', 4, 'PLT', 'RW', 'A'),
('Asistente de Ventas', 'Atiende clientes y genera cotizaciones.', 5, 'ADM', 'RW', 'A'),
('Gerente Comercial', 'Lidera las estrategias de ventas y relaci�n con clientes clave.', 5, 'ADM', 'RW', 'A');

SELECT * FROM Roles

INSERT INTO Departamentos VALUES
('Producci�n', 'Operaciones', 'Planta', 1),
('Calidad', 'Laboratorio', 'Planta', 2),
('Administraci�n', 'Gesti�n', 'Oficinas', 3),
('Mantenimiento', 'Servicios T�cnicos', 'Planta', 4),
('Ventas', 'Comercial', 'Oficinas', 5),
('Log�stica y Transporte', 'Distribuci�n', 'Campo', 6);

SELECT * FROM Departamentos

INSERT INTO Materiales VALUES
(1, 'Cemento Portland', 'Cemento base tipo I para concreto estructural', 0, NULL),
(2, 'Arena', 'Agregado fino para mezcla de concreto', 0, NULL),
(3, 'Grava 3/4"', 'Agregado grueso para concreto premezclado', 0, NULL),
(4, 'Agua', 'Agua potable para mezclado de concreto', 0, NULL),
(5, 'Aditivo Reductor de Agua', 'Mejora la trabajabilidad reduciendo agua en la mezcla', 1, 'RED'),
(6, 'Aditivo Acelerante', 'Reduce el tiempo de fraguado inicial', 1, 'ACR'),
(7, 'Aditivo Retardante', 'Retrasa el tiempo de fraguado en climas c�lidos', 1, 'RET'),
(8, 'Fibra de Polipropileno', 'Mejora el control de fisuras pl�sticas en el concreto', 1, 'OTR');

SELECT * FROM Materiales

INSERT INTO Recetas VALUES
('Concreto', 280.00, 750.00, 1050.00, 180.00, NULL, 1.00),
('Concreto', 320.00, 700.00, 1100.00, 190.00, 1.50, 1.00),
('Concreto', 350.00, 680.00, 1150.00, 195.00, 2.00, 1.00),
('Concreto', 380.00, 650.00, 1180.00, 200.00, 2.50, 1.00),
('Concreto Bombeable', 340.00, 720.00, 1080.00, 210.00, 2.00, 1.00),
('Concreto R�pido (Acelerado)', 360.00, 690.00, 1120.00, 205.00, 3.00, 1.00);

SELECT * FROM Recetas

USE Concretera;

INSERT INTO Cliente VALUES
(1, 'Constructora Atlas S.A. de C.V.', 'contacto@atlas.com', 5551112233, 1, 'Constructora', 1),
(2, 'Inmobiliaria Los Pinos', 'ventas@lospinos.mx', 5552223344, 2, 'Inmobiliaria', 1),
(3, 'Obras Civiles del Centro', 'proyectos@obrascentro.mx', 5553334455, 3, 'Infraestructura', 1),
(4, 'Particular Juan Hern�ndez', 'juan.hernandez@gmail.com', 5554445566, 5, 'Particular', 0),
(5, 'Edificaciones Modernas S.A.', 'info@edificamodernas.com', 5555556677, 2, 'Constructora', 1),
(6, 'Viviendas del Futuro', 'contacto@viviendasfuturo.mx', 5556667788, 4, 'Desarrolladora', 0),
(7, 'Supermercados La Esperanza', 'compras@esperanza.com', 5557778899, 3, 'Comercial', 1),
(8, 'Particular Ana L�pez', 'ana.lopez@hotmail.com', 5558889900, 5, 'Particular', 0),
(9, 'Concretos Urbanos', 'urbano@concretos.com', 5559990011, 1, 'Distribuidor', 1),
(10, 'Gobierno Municipal', 'obraspublicas@gob.mx', 5550001122, 1, 'Institucional', 1);

SELECT * FROM Cliente;

INSERT INTO Productos VALUES
(1, 'Concreto F\c=150 kg/cm2', 'Concreto para usos generales, baja resistencia'),
(2, 'Concreto F\c=200 kg/cm2', 'Concreto estructural ligero para zapatas y firmes'),
(3, 'Concreto F\c=250 kg/cm2', 'Concreto de resistencia media para losas y columnas'),
(4, 'Concreto F\c=300 kg/cm2', 'Concreto estructural de uso com�n en obra negra'),
(5, 'Concreto Bombeable', 'Dise�ado para colocaci�n con bomba en alturas y espacios reducidos'),
(6, 'Concreto R�pido', 'Con aditivos acelerantes, �til para reparaciones y obras urgentes'),
(7, 'Concreto Impermeable', 'Con aditivos que reducen filtraci�n de agua, ideal para cisternas'),
(8, 'Concreto Alta Resistencia F\c=400', 'Concreto especial para grandes cargas y estructuras de puentes'),
(9, 'Mortero de Alba�iler�a', 'Mezcla de cemento y arena para muros y acabados'),
(10, 'Grava Preempacada', 'Producto agregado listo para mezclarse en sitio');

SELECT * FROM Productos;

INSERT INTO Inventario VALUES
(1, 'Cemento Portland', 'Kg', 250000.00, 50000.00, 500000.00, GETDATE(), 1),
(2, 'Arena', 'Kg', 480000.00, 100000.00, 800000.00, GETDATE(), 1),
(3, 'Grava 3/4"', 'Kg', 600000.00, 150000.00, 900000.00, GETDATE(), 1),
(4, 'Agua Potable', 'Litros', 1000000.00, 200000.00, 2000000.00, GETDATE(), 1),
(5, 'Aditivo Reductor de Agua', 'Litros', 5000.00, 1000.00, 10000.00, GETDATE(), 1),
(6, 'Aditivo Acelerante', 'Litros', 3000.00, 500.00, 8000.00, GETDATE(), 1),
(7, 'Aditivo Retardante', 'Litros', 2500.00, 500.00, 7000.00, GETDATE(), 1),
(8, 'Fibra de Polipropileno', 'Kg', 1200.00, 200.00, 3000.00, GETDATE(), 1),
(9, 'Diesel para Camiones', 'Litros', 15000.00, 5000.00, 30000.00, GETDATE(), 1),
(10, 'Lubricantes y Aceites', 'Litros', 800.00, 200.00, 1500.00, GETDATE(), 1);


ALTER TABLE Inventario
ADD CONSTRAINT DF_Inventario_FechaActualizacion DEFAULT GETDATE() FOR FechaActualizacion;

TRUNCATE TABLE Inventario;

SELECT * FROM Inventario;

INSERT INTO Pedidos VALUES
(1, '2025-09-01', 1, 1, 'Av. Insurgentes 123, CDMX', 12.50, 1, 'Pendiente', 101),
(2, '2025-09-02', 2, 0, 'Carretera Monterrey 45, NL', 8.00, 2, 'En Proceso', 102),
(3, '2025-09-03', 3, 1, 'Zona Industrial, Guadalajara', 15.75, 3, 'Pendiente', 103),
(4, '2025-09-04', 1, 1, 'Av. Reforma 789, CDMX', 20.00, 4, 'Entregado', 104),
(5, '2025-09-05', 4, 0, 'Boulevard L�pez Mateos 56, Le�n', 10.00, 2, 'Pendiente', 105),
(6, '2025-09-06', 5, 1, 'Parque Industrial Quer�taro', 25.50, 1, 'En Proceso', 106),
(7, '2025-09-07', 3, 0, 'Zona Centro, Monterrey', 18.00, 5, 'Pendiente', 107),
(8, '2025-09-08', 2, 1, 'Carretera M�xico-Toluca KM 45', 30.00, 3, 'Entregado', 108),
(9, '2025-09-09', 4, 1, 'Av. Universidad 654, Puebla', 9.75, 1, 'Pendiente', 109),
(10, '2025-09-10', 5, 0, 'Zona Industrial Norte, M�rida', 14.25, 4, 'En Proceso', 110);

SELECT * FROM Pedidos;

INSERT INTO Plantas VALUES
(1, 'Planta Norte CDMX', 'Centro', 'Construcci�n Urbana', 'MEX'),
(2, 'Planta Monterrey', 'Noreste', 'Industrial', 'MEX'),
(3, 'Planta Guadalajara', 'Occidente', 'Residencial', 'MEX'),
(4, 'Planta Le�n', 'Baj�o', 'Comercial', 'MEX'),
(5, 'Planta M�rida', 'Sureste', 'Infraestructura', 'MEX');

SELECT * FROM Plantas;

INSERT INTO Tickets VALUES
(1, 1, 1, '2025-09-01', '2025-09-01', 12.50, 12.00, 'Entregado'),
(2, 2, 2, '2025-09-02', '2025-09-02', 8.00, 7.80, 'Entregado'),
(3, 3, 3, '2025-09-03', NULL, 15.75, NULL, 'En ruta'),
(4, 4, 4, '2025-09-04', '2025-09-04', 20.00, 20.00, 'Entregado'),
(5, 5, 5, '2025-09-05', NULL, 10.00, NULL, 'Pendiente');

SELECT * FROM Tickets

INSERT INTO Ventas VALUES
(101, 1, '2025-09-01', 'Contado', 15000.000),
(102, 2, '2025-09-02', 'Cr�dito', 9500.000),
(103, 3, '2025-09-03', 'Contado', 18750.000),
(104, 4, '2025-09-04', 'Cr�dito', 22000.000),
(105, 5, '2025-09-05', 'Contado', 11000.000);

SELECT * FROM Ventas;

INSERT INTO Reconcilacion VALUES
(1, 1, 1, 12.50, 12.50, 12.00, GETDATE(), 'Diferencia menor por evaporaci�n'),
(2, 2, 2, 8.00, 8.00, 7.80, GETDATE(), 'Entrega completa con ligera merma'),
(3, 3, 3, 15.75, 15.75, 0.00, GETDATE(), 'Cami�n a�n en ruta'),
(4, 4, 4, 20.00, 20.00, 20.00, GETDATE(), 'Entrega correcta'),
(5, 5, 5, 10.00, 10.00, 0.00, GETDATE(), 'Pendiente de entrega');

SELECT * FROM Reconcilacion;
