--Se necesita Camiones
CREATE DATABASE Concretera;

USE Concretera;

CREATE TABLE Camiones(
	Id_Camiones INT PRIMARY KEY,
	Placas CHAR(7),
	DriverID INT,
	Planta CHAR(5),
	Estatus VARCHAR(100),
	Capacidad INT,
	Unidad CHAR(3),
	)

--Empleados
CREATE TABLE Empleados(
	Id_Empleado INT,
	Nombre_Empleado VARCHAR(150),
	Apellidos VARCHAR(150),
	Telefono BIGINT,
	Correo VARCHAR(500),
	Mercado VARCHAR(150),
	Salario INT,
	Roles VARCHAR(150),
	DepartamentoID INT,
)

ALTER TABLE Empleados
ALTER COLUMN Fecha_Ingreso DATE NOT NULL;

ALTER TABLE Empleados
ADD Fecha_Salida DATE;

--Roles
CREATE TABLE Roles(
	Nombre_Role VARCHAR(200),
	Descripcion_Role VARCHAR(1000),
	DepartamentoID INT,
	Zona CHAR(3),
	Permisos CHAR(2),
	Estatus CHAR(1),
)

--Departamentos
CREATE TABLE Departamentos(
	Nombre_Depa VARCHAR(200),
	Area VARCHAR(150),
	Zona VARCHAR(150),
	DepartamentoID INT PRIMARY KEY,
)

--Materiales
CREATE TABLE Materiales(
	MaterialID INT PRIMARY KEY,
	Nombre_Material VARCHAR(200),
	Descripcion VARCHAR(200),
	Aditivo BIT,
	Tipo_Aditivo CHAR(3)
)

--Productos
CREATE TABLE Productos(
	ProductoID INT,
	Nombre_Producto VARCHAR(250),
	Descripcion VARCHAR(250)
)

ALTER TABLE Productos
ALTER COLUMN ProductoID INT NOT NULL

ALTER TABLE Productos
ADD CONSTRAINT PK_Productos PRIMARY KEY (ProductoID) 

--Plantas
CREATE TABLE Plantas(
	PlantaID INT PRIMARY KEY,
	Nombre_Planta VARCHAR(250),
	Region VARCHAR(250),
	Mercado VARCHAR(250),
	Pais CHAR(3)
)

--Clientes
CREATE TABLE Cliente(
	ClientesID INT PRIMARY KEY,
	Nombre_Cliente VARCHAR(200),
	Correo VARCHAR(500),
	Telefono BIGINT,
	Prioridad INT,
	Tipo_Cliente VARCHAR(250),
	Contrato BIT
)

--Ventas
CREATE TABLE Ventas (
	VentaID INT PRIMARY KEY,
	Numero_Pedido INT,
	Fecha_Venta DATE,
	Tipo_Venta VARCHAR(250),
	Total DECIMAL(10,3)
)

--Salarios
CREATE TABLE Salarios(
	DepartamentoID INT,
	EmpleadoID INT,
	Cantidad_mensual BIGINT,
	Fecha_Pago DATE,
	Tipo_Pago VARCHAR(150),
	Observaciones VARCHAR(200)
	)

--Recetas
CREATE TABLE Recetas(
	IdReceta INT PRIMARY KEY IDENTITY(1,1),
    NombreReceta VARCHAR(100) NOT NULL,       
    CementoKg DECIMAL(10,2) NOT NULL,         
    ArenaKg DECIMAL(10,2) NOT NULL,           
    GravaKg DECIMAL(10,2) NOT NULL,           
    AguaLitros DECIMAL(10,2) NOT NULL,        
    AditivoLitros DECIMAL(10,2) NULL,         
    RendimientoM3 DECIMAL(10,2) NOT NULL      
);


--Pedidos
CREATE TABLE Pedidos(
    IdPedido INT PRIMARY KEY,
    FechaPedido DATE NOT NULL,
    ClienteID INT NOT NULL,
	Contrato BIT,
    DireccionEntrega VARCHAR(200) NOT NULL,
    Cantidad DECIMAL(10,2) NOT NULL,         
    IdReceta INT NOT NULL,                      
    Estado VARCHAR(50),
	VentaID INT 
);

--Tickets
CREATE TABLE Tickets(
    TicketId INT PRIMARY KEY,
    PedidoId INT NOT NULL,                
    Id_Camiones INT NOT NULL,            
    FechaSalida DATE NOT NULL,
    FechaEntrega DATE NULL,
    YD3Cargados DECIMAL(10,2) NOT NULL,   
    YD3Entregados DECIMAL(10,2) NULL,      
    Estado VARCHAR(50) DEFAULT 'En ruta'
	) 
	

--Reconcilacion
CREATE TABLE Reconcilacion(
	ReconciliacionId INT PRIMARY KEY,
    TicketId INT NOT NULL,                         
    PedidoId INT NOT NULL,                         
    YD3Pedido DECIMAL(10,2) NOT NULL,                
    YD3Cargados DECIMAL(10,2) NOT NULL,              
    YD3Entregados DECIMAL(10,2) NOT NULL,             
    FechaReconciliacion DATETIME DEFAULT GETDATE(),
    Observaciones VARCHAR(250) NULL,  
)

--Inventario
CREATE TABLE Inventario(
	InventarioId INT PRIMARY KEY,
    Nombre_Material VARCHAR(200) NOT NULL,        
    UnidadMedida VARCHAR(20) NOT NULL,     
    CantidadActual DECIMAL(12,2) NOT NULL, 
    CantidadMinima DECIMAL(12,2) NOT NULL, 
    CantidadMaxima DECIMAL(12,2) NULL,     
    FechaActualizacion DATETIME DEFAULT GETDATE(),
    PlantaID INT 
)
--ClassCX
