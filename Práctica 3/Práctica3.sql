USE [PuntoDeVenta]
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
ALTER TABLE [dbo].[Negocio] DROP CONSTRAINT [Relation_Negocio_Domicilio]
GO
ALTER TABLE [dbo].[Trabajadores] DROP CONSTRAINT [Default_turno]
GO
/****** Object:  Index [unique_telefono]    Script Date: 27/09/2019 09:58:29 p. m. ******/
ALTER TABLE [dbo].[Trabajadores] DROP CONSTRAINT [unique_telefono]
GO
/****** Object:  Index [unique_Ref]    Script Date: 27/09/2019 09:58:29 p. m. ******/
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [unique_Ref]
GO
/****** Object:  Index [INDX_Proveedores_Nombre]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP INDEX [INDX_Proveedores_Nombre] ON [dbo].[Proveedores]
GO
/****** Object:  Index [INDX_Productos_Marca]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP INDEX [INDX_Productos_Marca] ON [dbo].[Productos]
GO
/****** Object:  Index [unique_nombre]    Script Date: 27/09/2019 09:58:29 p. m. ******/
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [unique_nombre]
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[Trabajadores]
GO
/****** Object:  Table [dbo].[tipoPago]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[tipoPago]
GO
/****** Object:  Table [dbo].[ticketDetalle]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[ticketDetalle]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[Sucursales]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Negocio]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[Negocio]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP TABLE [dbo].[Domicilio]
GO
USE [master]
GO
/****** Object:  Database [PuntoDeVenta]    Script Date: 27/09/2019 09:58:29 p. m. ******/
DROP DATABASE [PuntoDeVenta]
GO
/****** Object:  Database [PuntoDeVenta]    Script Date: 27/09/2019 09:58:29 p. m. ******/
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
/****** Object:  Table [dbo].[Domicilio]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
	[dirCompleta]  AS (((((([calle]+' ')+[numero])+' ')+[colonia])+' ')+[ciudad]),
PRIMARY KEY CLUSTERED 
(
	[domicilio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Negocio]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
/****** Object:  Table [dbo].[Puesto]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
/****** Object:  Table [dbo].[Sucursales]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
/****** Object:  Table [dbo].[Ticket]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
/****** Object:  Table [dbo].[ticketDetalle]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
/****** Object:  Table [dbo].[tipoPago]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 27/09/2019 09:58:30 p. m. ******/
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
	[turno] [varchar](10) NULL,
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
SET ANSI_PADDING ON

GO
/****** Object:  Index [unique_nombre]    Script Date: 27/09/2019 09:58:30 p. m. ******/
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [unique_nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [INDX_Productos_Marca]    Script Date: 27/09/2019 09:58:30 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Productos_Marca] ON [dbo].[Productos]
(
	[marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Proveedores_Nombre]    Script Date: 27/09/2019 09:58:30 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Proveedores_Nombre] ON [dbo].[Proveedores]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_Ref]    Script Date: 27/09/2019 09:58:30 p. m. ******/
ALTER TABLE [dbo].[ticketDetalle] ADD  CONSTRAINT [unique_Ref] UNIQUE NONCLUSTERED 
(
	[ticketRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [unique_telefono]    Script Date: 27/09/2019 09:58:30 p. m. ******/
ALTER TABLE [dbo].[Trabajadores] ADD  CONSTRAINT [unique_telefono] UNIQUE NONCLUSTERED 
(
	[telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Trabajadores] ADD  CONSTRAINT [Default_turno]  DEFAULT ('Vespertino') FOR [turno]
GO
ALTER TABLE [dbo].[Negocio]  WITH CHECK ADD  CONSTRAINT [Relation_Negocio_Domicilio] FOREIGN KEY([domicilio])
REFERENCES [dbo].[Domicilio] ([domicilio_id])
GO
ALTER TABLE [dbo].[Negocio] CHECK CONSTRAINT [Relation_Negocio_Domicilio]
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
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD  CONSTRAINT [Relation_Detalle_Producto] FOREIGN KEY([producto])
REFERENCES [dbo].[Productos] ([producto_id])
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
USE [master]
GO
ALTER DATABASE [PuntoDeVenta] SET  READ_WRITE 
GO
