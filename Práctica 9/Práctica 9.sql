USE [PuntoDeVenta]
GO
/****** Object:  Trigger [tr_inventario_delete]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TRIGGER [dbo].[tr_inventario_delete]
GO
/****** Object:  StoredProcedure [dbo].[SelectViewTrabXTurno]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP PROCEDURE [dbo].[SelectViewTrabXTurno]
GO
/****** Object:  StoredProcedure [dbo].[SelectViewTrabajadores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP PROCEDURE [dbo].[SelectViewTrabajadores]
GO
/****** Object:  StoredProcedure [dbo].[SelectViewPuestosTrab]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP PROCEDURE [dbo].[SelectViewPuestosTrab]
GO
/****** Object:  StoredProcedure [dbo].[SelectViewProdVenta]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP PROCEDURE [dbo].[SelectViewProdVenta]
GO
/****** Object:  StoredProcedure [dbo].[SelectViewDirSuc]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP PROCEDURE [dbo].[SelectViewDirSuc]
GO
ALTER TABLE [dbo].[Trabajadores] DROP CONSTRAINT [Edad]
GO
ALTER TABLE [dbo].[Trabajadores] DROP CONSTRAINT [Relation_Trabajadores_Puesto]
GO
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [Relation_Detalle_Ticket]
GO
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [Relation_Detalle_Producto]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [Relation_Ticket_Negocio]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [Relation_Ticket_Empleado]
GO
ALTER TABLE [dbo].[Sucursales] DROP CONSTRAINT [Relation_Sucursales_Domicilio]
GO
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT [Relation_Proveedores_Productos]
GO
ALTER TABLE [dbo].[pedidoDetalle] DROP CONSTRAINT [Relation_pedidoDet_Pedido]
GO
ALTER TABLE [dbo].[pedidoDetalle] DROP CONSTRAINT [Relation_pedidoDet_Inventario]
GO
ALTER TABLE [dbo].[Negocio] DROP CONSTRAINT [Relation_Negocio_Domicilio]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [Relation_Inventario_Sucursal]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [Relation_Inventario_Producto]
GO
/****** Object:  Index [unique_telefono]    Script Date: 02/11/2019 11:23:20 p. m. ******/
ALTER TABLE [dbo].[Trabajadores] DROP CONSTRAINT [unique_telefono]
GO
/****** Object:  Index [unique_Ref]    Script Date: 02/11/2019 11:23:20 p. m. ******/
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [unique_Ref]
GO
/****** Object:  Index [INDX_Proveedores_Nombre]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP INDEX [INDX_Proveedores_Nombre] ON [dbo].[Proveedores]
GO
/****** Object:  Index [INDX_Productos_Marca]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP INDEX [INDX_Productos_Marca] ON [dbo].[Productos]
GO
/****** Object:  Index [unique_nombre]    Script Date: 02/11/2019 11:23:20 p. m. ******/
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [unique_nombre]
GO
/****** Object:  View [dbo].[trabajadores_por_turno]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP VIEW [dbo].[trabajadores_por_turno]
GO
/****** Object:  View [dbo].[puestos_trabajadores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP VIEW [dbo].[puestos_trabajadores]
GO
/****** Object:  View [dbo].[productos_a_la_venta]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP VIEW [dbo].[productos_a_la_venta]
GO
/****** Object:  View [dbo].[direccion_sucursales]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP VIEW [dbo].[direccion_sucursales]
GO
/****** Object:  View [dbo].[cantidad_de_trabajadores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP VIEW [dbo].[cantidad_de_trabajadores]
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Trabajadores]
GO
/****** Object:  Table [dbo].[tipoPago]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[tipoPago]
GO
/****** Object:  Table [dbo].[ticketDetalle]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[ticketDetalle]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Sucursales]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[pedidoDetalle]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[pedidoDetalle]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Pedido]
GO
/****** Object:  Table [dbo].[Negocio]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Negocio]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Inventario]
GO
/****** Object:  Table [dbo].[Gerentes]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Gerentes]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP TABLE [dbo].[Domicilio]
GO
/****** Object:  UserDefinedFunction [dbo].[fecha]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP FUNCTION [dbo].[fecha]
GO
USE [master]
GO
/****** Object:  Database [PuntoDeVenta]    Script Date: 02/11/2019 11:23:20 p. m. ******/
DROP DATABASE [PuntoDeVenta]
GO
/****** Object:  Database [PuntoDeVenta]    Script Date: 02/11/2019 11:23:20 p. m. ******/
CREATE DATABASE [PuntoDeVenta]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PuntoDeVenta', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PuntoDeVenta.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PuntoDeVenta_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PuntoDeVenta_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PuntoDeVenta] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PuntoDeVenta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PuntoDeVenta] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ARITHABORT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PuntoDeVenta] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PuntoDeVenta] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PuntoDeVenta] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PuntoDeVenta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PuntoDeVenta] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PuntoDeVenta] SET  MULTI_USER 
GO
ALTER DATABASE [PuntoDeVenta] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PuntoDeVenta] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PuntoDeVenta] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PuntoDeVenta] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PuntoDeVenta]
GO
/****** Object:  UserDefinedFunction [dbo].[fecha]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fecha](
@parametro1 date
)
returns varchar(200)
as BEGIN
return
	Convert(varchar, DATEPART(YEAR, @parametro1)) + '-' +
	Convert(varchar, DATEPART(MONTH, @parametro1)) + '-' +
	Convert(varchar, DATEPART(DAY, @parametro1))
END

GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Domicilio](
	[domicilio_id] [int] NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[numero] [int] NOT NULL,
	[colonia] [varchar](50) NOT NULL,
	[ciudad] [varchar](30) NULL,
	[codPostal] [int] NULL,
	[ComputedColumn]  AS (((((((([calle]+' ')+CONVERT([varchar],[numero]))+' ')+[colonia])+' ')+[ciudad])+' ')+CONVERT([varchar],[codPostal])),
PRIMARY KEY CLUSTERED 
(
	[domicilio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gerentes]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gerentes](
	[empleado_id] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellidoPat] [varchar](255) NOT NULL,
	[apellidoMat] [varchar](255) NOT NULL,
	[nombreCompleto] [varchar](767) NOT NULL,
	[turno] [varchar](10) NULL,
	[telefono] [varchar](15) NULL,
	[fechaNac] [date] NULL,
	[puesto] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[inventario_id] [int] NOT NULL,
	[sucursal] [int] NOT NULL,
	[producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[inventario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Negocio]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Negocio](
	[negocio_id] [int] NOT NULL,
	[responsable] [varchar](100) NOT NULL,
	[telefono] [int] NOT NULL,
	[domicilio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[negocio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[pedido_id] [int] NOT NULL,
	[pedidoFecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[pedido_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pedidoDetalle]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidoDetalle](
	[pedidoDet_id] [int] NOT NULL,
	[pedidoRef] [int] NOT NULL,
	[prod_Pedido] [int] NOT NULL,
	[cant_Pedido] [int] NOT NULL,
	[precio_Pedido] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pedidoDet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[producto_id] [int] NOT NULL,
	[precio] [int] NOT NULL,
	[marca] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[proveedor_id] [int] NOT NULL,
	[nombre] [int] NOT NULL,
	[producto] [varchar](255) NOT NULL,
	[costo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[proveedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto](
	[puesto_id] [int] NOT NULL,
	[descripcion_Puesto] [varchar](30) NOT NULL,
	[sueldo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[puesto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursales](
	[sucursal_id] [int] NOT NULL,
	[gerente] [varchar](255) NOT NULL,
	[domicilio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[ticket_id] [int] NOT NULL,
	[fechaCompra] [datetime] NULL,
	[negocio] [int] NULL,
	[empleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ticketDetalle]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticketDetalle](
	[detalle_id] [int] NOT NULL,
	[ticketRef] [int] NOT NULL,
	[producto] [int] NOT NULL,
	[precio] [int] NULL,
	[cantidad] [int] NULL,
	[total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[detalle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipoPago]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipoPago](
	[tipoPago_id] [int] NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipoPago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trabajadores](
	[empleado_id] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellidoPat] [varchar](255) NOT NULL,
	[apellidoMat] [varchar](255) NOT NULL,
	[nombreCompleto]  AS (((([nombre]+' ')+[apellidoPat])+' ')+[apellidoMat]),
	[turno] [varchar](10) NULL CONSTRAINT [Default_turno]  DEFAULT ('Vespertino'),
	[telefono] [varchar](15) NULL,
	[fechaNac] [date] NULL,
	[puesto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[cantidad_de_trabajadores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[cantidad_de_trabajadores] as (
SELECT puesto, COUNT(puesto) as 'Cantidad Trabajadores'
FROM Trabajadores
GROUP BY puesto
)

GO
/****** Object:  View [dbo].[direccion_sucursales]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[direccion_sucursales] as(
SELECT suc.sucursal_id as 'Sucursal', dom.ComputedColumn as 'Dirección'
FROM Domicilio as dom
INNER JOIN Sucursales as suc ON dom.domicilio_id = suc.domicilio
)

GO
/****** Object:  View [dbo].[productos_a_la_venta]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[productos_a_la_venta] as(
SELECT marca, COUNT(marca) as 'Productos'
FROM Productos
GROUP BY marca
)

GO
/****** Object:  View [dbo].[puestos_trabajadores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[puestos_trabajadores] as(
SELECT tr.nombreCompleto as 'Nombre', p.descripcion_Puesto as 'Puesto'
FROM Trabajadores as tr
INNER JOIN Puesto as p ON tr.puesto = p.puesto_id
)

GO
/****** Object:  View [dbo].[trabajadores_por_turno]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[trabajadores_por_turno] as (
SELECT turno, COUNT(turno) as 'Trabajadores por turno'
FROM Trabajadores
GROUP BY turno
)

GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (1, N'Mariano Paredes', 2629, N'Benito Juarez', N'Monterrey', 64218)
GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (2, N'Cerro del Obispado', 118, N'Las Puentes', N'Monterrey', 66460)
GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (3, N'Naranjos', 343, N'Hacienda Las Puentes', N'San Nicolás de los Garza', 66465)
GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (4, N'Octavio Paz', 953, N'Santa Cecilia', N'Apodaca', 66636)
GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (5, N'Reforma', 107, N'Belisario Domínguez', N'General Escobedo', 66053)
GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (6, N'Malinche', 133, N'Azteca', N'San Nicolás de los Garza', 66480)
GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (7, N'Fuente Alta', 327, N'Fuentes de Anahuac', N'San Nicolás de los Garza', 66444)
GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (8, N'Calle 6a', 119, N'Jardines de Anahuac', N'San Nicolás de los Garza', 66463)
GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (9, N'Tokio', 213, N'Altavista', N'Monterrey', 64840)
GO
INSERT [dbo].[Domicilio] ([domicilio_id], [calle], [numero], [colonia], [ciudad], [codPostal]) VALUES (10, N'Santa Lucía', 113, N'San Isidro', N'San Nicolás de los Garza', 66413)
GO
INSERT [dbo].[Gerentes] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [nombreCompleto], [turno], [telefono], [fechaNac], [puesto]) VALUES (1, N'Juan', N'Pérez', N'González', N'Juan Pérez González', N'2', N'8135974230', CAST(N'1990-10-10' AS Date), 1)
GO
INSERT [dbo].[Gerentes] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [nombreCompleto], [turno], [telefono], [fechaNac], [puesto]) VALUES (3, N'Paloma', N'Martínez', N'Saldaña', N'Paloma Martínez Saldaña', N'1', N'8458524230', CAST(N'1989-06-15' AS Date), 1)
GO
INSERT [dbo].[Gerentes] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [nombreCompleto], [turno], [telefono], [fechaNac], [puesto]) VALUES (7, N'Karen', N'Martínez', N'Aldaba', N'Karen Martínez Aldaba', N'3', N'8848336597', CAST(N'1994-02-23' AS Date), 1)
GO
INSERT [dbo].[Gerentes] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [nombreCompleto], [turno], [telefono], [fechaNac], [puesto]) VALUES (22, N'Josue', N'Luna', N'Ramírez', N'Josue Luna Ramírez', N'3', N'8963574129', CAST(N'1994-06-15' AS Date), 1)
GO
INSERT [dbo].[Gerentes] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [nombreCompleto], [turno], [telefono], [fechaNac], [puesto]) VALUES (24, N'Salvador', N'Guerra', N'Melendez', N'Salvador Guerra Melendez', N'1', N'8269347510', CAST(N'1991-01-13' AS Date), 1)
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (1, 20, N'Coca Cola', N'Coca Cola')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (2, 19, N'Coca Cola', N'Sprite')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (3, 19, N'Coca Cola', N'Fanta')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (4, 19, N'Coca Cola', N'Del Valle')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (5, 16, N'Coca Cola', N'Ciel')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (7, 20, N'Coca Cola', N'Coca Cola Light')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (9, 16, N'Sabritas', N'Ruffles Queso')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (10, 16, N'Cheetos', N'Puff')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (11, 12, N'Cheetos', N'Flamin Hot')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (12, 12, N'Cheetos', N'Crunchy')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (15, 16, N'Sabritas', N'Xtra Flamin Hot')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (16, 16, N'Sabritas', N'Adobadas')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (17, 16, N'Sabritas', N'Cremas & Especias')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (18, 12, N'Bimbo', N'Donitas')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (20, 12, N'Bimbo', N'Mantecadas con Nuez')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (21, 18, N'Bimbo', N'Pan blanco')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (22, 15, N'Bimbo', N'Medias Noches')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (23, 14, N'Bimbo', N'Roles de Canela')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (24, 16, N'Bimbo', N'Donas')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (25, 12, N'Bimbo', N'Mini mantecadas')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (26, 19, N'Bimbo', N'Conchas')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (27, 16, N'Bimbo', N'Rebanadas de Nuez')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (28, 18, N'Bimbo', N'Bimbollos')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (29, 16, N'Bimbo', N'Colchones')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (30, 17, N'Bimbo', N'Bimbuñuelos')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (31, 16, N'Marinela', N'Submarinos')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (32, 18, N'Marinela', N'Pingüinos')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (33, 14, N'Marinela', N'Gansito')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (34, 16, N'Marinela', N'Pay de Piña')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (35, 16, N'Marinela', N'Pay con Nuez')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (36, 16, N'Marinela', N'Napolitano')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (37, 19, N'Marinela', N'Choco Roles')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (38, 15, N'Marinela', N'Polvorones')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (39, 16, N'Marinela', N'Principe')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (40, 16, N'Marinela', N'Canelitas')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (41, 16, N'Marinela', N'Triki Trakes')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (42, 16, N'Marinela', N'Barritas Piña')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (43, 16, N'Marinela', N'Barritas Fresa')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (44, 14, N'Marinela', N'Suavicremas Chocolate')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (45, 14, N'Marinela', N'Suavicremas Fresa')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (46, 14, N'Marinela', N'Suavicremas Vainilla')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (48, 15, N'Gamesa', N'Emperador Chocolate')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (49, 15, N'Gamesa', N'Emperador Limón')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (50, 15, N'Gamesa', N'Emperador Vainilla')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (51, 13, N'Gamesa', N'Chokis')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (52, 8, N'Gamesa', N'Mamut')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (53, 13, N'Gamesa', N'Cremax Vainilla')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (54, 13, N'Gamesa', N'Cremax Chocolate')
GO
INSERT [dbo].[Productos] ([producto_id], [precio], [marca], [nombre]) VALUES (55, 13, N'Gamesa', N'Cremax Fresa')
GO
INSERT [dbo].[Puesto] ([puesto_id], [descripcion_Puesto], [sueldo]) VALUES (1, N'Gerente', 5000)
GO
INSERT [dbo].[Puesto] ([puesto_id], [descripcion_Puesto], [sueldo]) VALUES (2, N'Cajero', 2000)
GO
INSERT [dbo].[Puesto] ([puesto_id], [descripcion_Puesto], [sueldo]) VALUES (3, N'Conserje', 800)
GO
INSERT [dbo].[Sucursales] ([sucursal_id], [gerente], [domicilio]) VALUES (1, N'Josue Luna Ramírez', 8)
GO
INSERT [dbo].[Sucursales] ([sucursal_id], [gerente], [domicilio]) VALUES (2, N'Salvador Guerra Melendez', 1)
GO
INSERT [dbo].[Sucursales] ([sucursal_id], [gerente], [domicilio]) VALUES (3, N'Karen Martínez Aldaba', 3)
GO
INSERT [dbo].[Sucursales] ([sucursal_id], [gerente], [domicilio]) VALUES (4, N'Juan Perez González', 6)
GO
INSERT [dbo].[Sucursales] ([sucursal_id], [gerente], [domicilio]) VALUES (5, N'Paloma Martínez Saldaña', 10)
GO
INSERT [dbo].[tipoPago] ([tipoPago_id], [descripcion]) VALUES (1, N'Tarjeta de credito')
GO
INSERT [dbo].[tipoPago] ([tipoPago_id], [descripcion]) VALUES (2, N'Efectivo')
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (1, N'Juan', N'Pérez', N'González', N'2', N'8135974230', CAST(N'1990-10-10' AS Date), 1)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (2, N'Sofía', N'Rodríguez', N'Pérez', N'1', N'8516794301', CAST(N'1995-01-09' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (3, N'Paloma', N'Martínez', N'Saldaña', N'1', N'8458524230', CAST(N'1989-06-15' AS Date), 1)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (4, N'Luis', N'González', N'González', N'3', N'8116597703', CAST(N'1997-10-17' AS Date), 3)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (5, N'Angel', N'Martínez', N'García', N'1', N'8974123658', CAST(N'1976-05-27' AS Date), 3)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (6, N'Angela', N'Martínez', N'Arellano', N'2', N'8226547920', CAST(N'1978-04-16' AS Date), 3)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (7, N'Karen', N'Martínez', N'Aldaba', N'3', N'8848336597', CAST(N'1994-02-23' AS Date), 1)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (8, N'Luis', N'Alfaro', N'López', N'2', N'8126344597', CAST(N'1973-08-25' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (9, N'Luisa', N'López', N'Támez', N'2', N'8459112736', CAST(N'1989-12-13' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (10, N'Jorge', N'Herrera', N'Ramos', N'2', N'8145997632', CAST(N'1993-11-27' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (11, N'Víctor', N'Limón', N'López', N'1', N'8452116937', CAST(N'1987-04-16' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (12, N'Christian', N'Ledezma', N'Medina', N'3', N'8456997321', CAST(N'1985-06-13' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (13, N'Michelle', N'Ramírez', N'Ramírez', N'3', N'8964751235', CAST(N'1978-07-23' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (14, N'Miguel', N'Solis', N'de la Cruz', N'1', N'8596314227', CAST(N'1986-03-22' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (15, N'Jazmín', N'Jiménez', N'Calvillo', N'1', N'8569974122', CAST(N'1992-06-28' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (16, N'María', N'Sosa', N'Domínguez', N'3', N'8512247963', CAST(N'1989-05-25' AS Date), 3)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (17, N'Valeria', N'Briones', N'López', N'3', N'8151497923', CAST(N'1978-10-15' AS Date), 3)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (18, N'Enrique', N'Ángeles', N'Sálazar', N'1', N'8126593347', CAST(N'1986-03-15' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (19, N'Gerardo', N'Juarez', N'Limón', N'3', N'8265993741', CAST(N'1973-02-28' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (20, N'Javier', N'Treviño', N'Prados', N'1', N'8522697433', CAST(N'1991-12-24' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (21, N'Alejandra', N'Pérez', N'González', N'1', N'8693259746', CAST(N'1998-02-11' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (22, N'Josue', N'Luna', N'Ramírez', N'3', N'8963574129', CAST(N'1994-06-15' AS Date), 1)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (23, N'Victoria', N'Díaz', N'Domínguez', N'2', N'8569423111', CAST(N'1989-09-23' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (24, N'Salvador', N'Guerra', N'Melendez', N'1', N'8269347510', CAST(N'1991-01-13' AS Date), 1)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (25, N'Santiago', N'Guevara', N'Flores', N'2', N'8269553699', CAST(N'1974-01-27' AS Date), 3)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (26, N'Hugo', N'Rosas', N'Quiroz', N'3', N'8456932259', CAST(N'1996-08-21' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (27, N'Priscila', N'Váldez', N'Reyes', N'2', N'8596475236', CAST(N'1979-12-25' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (28, N'Lorena', N'Martínez', N'Martínez', N'1', N'8533697456', CAST(N'1987-04-19' AS Date), 2)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (29, N'Sarahí', N'Palomino', N'López', N'3', N'8956234778', CAST(N'1979-07-15' AS Date), 3)
GO
INSERT [dbo].[Trabajadores] ([empleado_id], [nombre], [apellidoPat], [apellidoMat], [turno], [telefono], [fechaNac], [puesto]) VALUES (30, N'Omar', N'García', N'Pérez', N'1', N'8596312699', CAST(N'1996-09-23' AS Date), 2)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [unique_nombre]    Script Date: 02/11/2019 11:23:20 p. m. ******/
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [unique_nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [INDX_Productos_Marca]    Script Date: 02/11/2019 11:23:20 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Productos_Marca] ON [dbo].[Productos]
(
	[marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Proveedores_Nombre]    Script Date: 02/11/2019 11:23:20 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Proveedores_Nombre] ON [dbo].[Proveedores]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_Ref]    Script Date: 02/11/2019 11:23:20 p. m. ******/
ALTER TABLE [dbo].[ticketDetalle] ADD  CONSTRAINT [unique_Ref] UNIQUE NONCLUSTERED 
(
	[ticketRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [unique_telefono]    Script Date: 02/11/2019 11:23:20 p. m. ******/
ALTER TABLE [dbo].[Trabajadores] ADD  CONSTRAINT [unique_telefono] UNIQUE NONCLUSTERED 
(
	[telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [Relation_Inventario_Producto] FOREIGN KEY([producto])
REFERENCES [dbo].[Productos] ([producto_id])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [Relation_Inventario_Producto]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [Relation_Inventario_Sucursal] FOREIGN KEY([sucursal])
REFERENCES [dbo].[Sucursales] ([sucursal_id])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [Relation_Inventario_Sucursal]
GO
ALTER TABLE [dbo].[Negocio]  WITH CHECK ADD  CONSTRAINT [Relation_Negocio_Domicilio] FOREIGN KEY([domicilio])
REFERENCES [dbo].[Domicilio] ([domicilio_id])
GO
ALTER TABLE [dbo].[Negocio] CHECK CONSTRAINT [Relation_Negocio_Domicilio]
GO
ALTER TABLE [dbo].[pedidoDetalle]  WITH CHECK ADD  CONSTRAINT [Relation_pedidoDet_Inventario] FOREIGN KEY([cant_Pedido])
REFERENCES [dbo].[Inventario] ([inventario_id])
GO
ALTER TABLE [dbo].[pedidoDetalle] CHECK CONSTRAINT [Relation_pedidoDet_Inventario]
GO
ALTER TABLE [dbo].[pedidoDetalle]  WITH CHECK ADD  CONSTRAINT [Relation_pedidoDet_Pedido] FOREIGN KEY([pedidoRef])
REFERENCES [dbo].[Pedido] ([pedido_id])
GO
ALTER TABLE [dbo].[pedidoDetalle] CHECK CONSTRAINT [Relation_pedidoDet_Pedido]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [Relation_Proveedores_Productos] FOREIGN KEY([nombre])
REFERENCES [dbo].[Productos] ([producto_id])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [Relation_Proveedores_Productos]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [Relation_Sucursales_Domicilio] FOREIGN KEY([domicilio])
REFERENCES [dbo].[Domicilio] ([domicilio_id])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [Relation_Sucursales_Domicilio]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [Relation_Ticket_Empleado] FOREIGN KEY([empleado])
REFERENCES [dbo].[Trabajadores] ([empleado_id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [Relation_Ticket_Empleado]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [Relation_Ticket_Negocio] FOREIGN KEY([negocio])
REFERENCES [dbo].[Negocio] ([negocio_id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [Relation_Ticket_Negocio]
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD  CONSTRAINT [Relation_Detalle_Producto] FOREIGN KEY([cantidad])
REFERENCES [dbo].[Inventario] ([inventario_id])
GO
ALTER TABLE [dbo].[ticketDetalle] CHECK CONSTRAINT [Relation_Detalle_Producto]
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD  CONSTRAINT [Relation_Detalle_Ticket] FOREIGN KEY([ticketRef])
REFERENCES [dbo].[Ticket] ([ticket_id])
GO
ALTER TABLE [dbo].[ticketDetalle] CHECK CONSTRAINT [Relation_Detalle_Ticket]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [Relation_Trabajadores_Puesto] FOREIGN KEY([puesto])
REFERENCES [dbo].[Puesto] ([puesto_id])
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [Relation_Trabajadores_Puesto]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [Edad] CHECK  ((datediff(year,[FechaNac],getdate())>(18)))
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [Edad]
GO
/****** Object:  StoredProcedure [dbo].[SelectViewDirSuc]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectViewDirSuc]
as
SELECT * FROM [PuntoDeVenta].[dbo].[direccion_sucursales]
GO;
GO
/****** Object:  StoredProcedure [dbo].[SelectViewProdVenta]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectViewProdVenta]
as
SELECT * FROM [PuntoDeVenta].[dbo].[productos_a_la_venta]
GO;
GO
/****** Object:  StoredProcedure [dbo].[SelectViewPuestosTrab]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectViewPuestosTrab]
as
SELECT * FROM [PuntoDeVenta].[dbo].[puestos_trabajadores]
GO;
GO
/****** Object:  StoredProcedure [dbo].[SelectViewTrabajadores]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectViewTrabajadores]
as
SELECT * FROM [PuntoDeVenta].[dbo].[cantidad_de_trabajadores]
GO;
GO
/****** Object:  StoredProcedure [dbo].[SelectViewTrabXTurno]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectViewTrabXTurno]
as
SELECT * FROM [PuntoDeVenta].[dbo].[trabajadores_por_turno]
GO;
GO
/****** Object:  Trigger [dbo].[tr_inventario_delete]    Script Date: 02/11/2019 11:23:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[tr_inventario_delete]
on [dbo].[Inventario]
instead of
insert
as Begin
	Select *
	from inserted
end

GO
USE [master]
GO
ALTER DATABASE [PuntoDeVenta] SET  READ_WRITE 
GO
