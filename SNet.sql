USE [master]
GO
/****** Object:  Database [SNet]    Script Date: 19-08-2024 9:02:28 ******/
CREATE DATABASE [SNet]
ALTER DATABASE [SNet] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SNet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SNet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SNet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SNet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SNet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SNet] SET ARITHABORT OFF 
GO
ALTER DATABASE [SNet] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SNet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SNet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SNet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SNet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SNet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SNet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SNet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SNet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SNet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SNet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SNet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SNet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SNet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SNet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SNet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SNet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SNet] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SNet] SET  MULTI_USER 
GO
ALTER DATABASE [SNet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SNet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SNet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SNet] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SNet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SNet] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SNet] SET QUERY_STORE = OFF
GO
USE [SNet]
GO
/****** Object:  Table [dbo].[Arriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arriendo]( -- CREAR TABLA ARRIENDO
	[IdArriendo] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Fecha] [nvarchar](max) NOT NULL,
	[IdProductosArriendo] [int] NOT NULL,
	[IdDetalleDelArriendo] [int] NOT NULL,
	[IdValorUnitario] [int] NOT NULL,
	[Subtotal] [nvarchar](max) NOT NULL,
	[Descuento] [nvarchar](max) NOT NULL,
	[IVA] [nvarchar](max) NOT NULL,
	[Total] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdArriendo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleDelArriendo]( -- CREAR TABLA DETALLE DEL ARRIENDO
	[IdDetalleDelArriendo] [int] IDENTITY(1,1) NOT NULL,
	[DetalleDelProducto1] [varchar](10) NOT NULL,
	[DetalleDelProducto2] [varchar](10) NULL,
	[DetalleDelProducto3] [varchar](10) NULL,
	[DetalleDelProducto4] [varchar](10) NULL,
	[DetalleDelProducto5] [varchar](10) NULL,
	[DetalleDelProducto6] [varchar](10) NULL,
	[DetalleDelProducto7] [varchar](10) NULL,
	[DetalleDelProducto8] [varchar](10) NULL,
	[DetalleDelProducto9] [varchar](10) NULL,
	[DetalleDelProducto10] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleDelArriendo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductosDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosDelArriendo]( -- CREAR TABLA PRODUCTOS DEL ARRIENDO
	[IdProductosArriendo] [int] IDENTITY(1,1) NOT NULL,
	[IdDelProducto1] [int] NOT NULL,
	[IdDelProducto2] [int] NULL,
	[IdDelProducto3] [int] NULL,
	[IdDelProducto4] [int] NULL,
	[IdDelProducto5] [int] NULL,
	[IdDelProducto6] [int] NULL,
	[IdDelProducto7] [int] NULL,
	[IdDelProducto8] [int] NULL,
	[IdDelProducto9] [int] NULL,
	[IdDelProducto10] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProductosArriendo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValorDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValorDelArriendo](
	[IdValorUnitario] [int] IDENTITY(1,1) NOT NULL,
	[ValorUnitario1] [varchar](10) NOT NULL,
	[ValorUnitario2] [varchar](10) NULL,
	[ValorUnitario3] [varchar](10) NULL,
	[ValorUnitario4] [varchar](10) NULL,
	[ValorUnitario5] [varchar](10) NULL,
	[ValorUnitario6] [varchar](10) NULL,
	[ValorUnitario7] [varchar](10) NULL,
	[ValorUnitario8] [varchar](10) NULL,
	[ValorUnitario9] [varchar](10) NULL,
	[ValorUnitario10] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdValorUnitario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente]( -- CREAR TABLA CLIENTE
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Rut] [varchar](20) NOT NULL,
	[IdComuna] [int] NOT NULL,
	[Direccion] [varchar](80) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Giro] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comuna]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comuna](
	[IdComuna] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[IdRegion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdComuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[IdProvincia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[IdRegion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[IdRegion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos]( -- CREAR TABLA PRODUCTOS
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[FechaIncorporacion] [varchar](20) NOT NULL,
	[CantidadInicial] [varchar](20) NOT NULL,
	[CantidadActual] [varchar](20) NOT NULL,
	[CantidadArrendada] [varchar](20) NOT NULL,
	[TotalActual] [varchar](20) NOT NULL,
	[ValorArriendo] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor]( -- CREAR TABLA PROVEEDOR
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Rut] [varchar](20) NOT NULL,
	[IdComuna] [int] NOT NULL,
	[Direccion] [varchar](80) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Giro] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](80) NOT NULL,
	[Pass] [varbinary](64) NOT NULL,
	[FecCrea] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT (CONVERT([varchar],getdate(),(120))) FOR [FecCrea]
GO
ALTER TABLE [dbo].[Arriendo]  WITH CHECK ADD  CONSTRAINT [FK_ADet] FOREIGN KEY([IdDetalleDelArriendo]) -- CONEXION ARRIENDO CON DETALLE DEL ARRIENDO
REFERENCES [dbo].[DetalleDelArriendo] ([IdDetalleDelArriendo])
GO
ALTER TABLE [dbo].[Arriendo] CHECK CONSTRAINT [FK_ADet]
GO
ALTER TABLE [dbo].[Arriendo]  WITH CHECK ADD  CONSTRAINT [FK_APro] FOREIGN KEY([IdProductosArriendo]) -- CONEXION ARRIENDO CON PRODUCTOS DEL ARRIENDO
REFERENCES [dbo].[ProductosDelArriendo] ([IdProductosArriendo])
GO
ALTER TABLE [dbo].[Arriendo] CHECK CONSTRAINT [FK_APro]
GO
ALTER TABLE [dbo].[Arriendo]  WITH CHECK ADD  CONSTRAINT [FK_AValorUnitario] FOREIGN KEY([IdValorUnitario]) -- CONEXION ARRIENDO CON VALOR DEL ARRIENDO
REFERENCES [dbo].[ValorDelArriendo] ([IdValorUnitario])
GO
ALTER TABLE [dbo].[Arriendo] CHECK CONSTRAINT [FK_AValorUnitario]
GO
ALTER TABLE [dbo].[Arriendo]  WITH CHECK ADD  CONSTRAINT [FK_Cliente] FOREIGN KEY([IdCliente]) -- CONEXION ARRIENDO CON CLIENTE
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Arriendo] CHECK CONSTRAINT [FK_Cliente]
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto7]) -- CONEXION PRODUCTOS CON PRODUCTOS 7
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto8]) -- CONEXION PRODUCTOS CON PRODUCTOS 8
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto9]) -- CONEXION PRODUCTOS CON PRODUCTOS 9
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto10]) -- CONEXION PRODUCTOS CON PRODUCTOS 10
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto1]) -- CONEXION PRODUCTOS CON PRODUCTOS 1
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto2]) -- CONEXION PRODUCTOS CON PRODUCTOS 2
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto3]) -- CONEXION PRODUCTOS CON PRODUCTOS 3
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto4]) -- CONEXION PRODUCTOS CON PRODUCTOS 4
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto5]) -- CONEXION PRODUCTOS CON PRODUCTOS 5
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[ProductosDelArriendo]  WITH CHECK ADD FOREIGN KEY([IdDelProducto6]) -- CONEXION PRODUCTOS CON PRODUCTOS 6
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdComuna]) -- CONEXION CLIENTE CON COMUNA
REFERENCES [dbo].[Comuna] ([IdComuna])
GO
ALTER TABLE [dbo].[Comuna]  WITH CHECK ADD FOREIGN KEY([IdProvincia]) -- CONEXION COMUNA CON PROVINCIA
REFERENCES [dbo].[Provincia] ([IdProvincia])
GO
ALTER TABLE [dbo].[Provincia] WITH CHECK ADD FOREIGN KEY([IdRegion]) -- CONEXION PROVINCIA CON REGION
REFERENCES [dbo].[Region] ([IdRegion])
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([IdComuna]) -- CONEXION PROVEEDOR CON COMUNA
REFERENCES [dbo].[Comuna] ([IdComuna])

ALTER TABLE [dbo].[Comuna]  WITH CHECK ADD FOREIGN KEY([IdRegion]) -- CONEXION PROVEEDOR CON COMUNA
REFERENCES [dbo].[Region] ([IdRegion])
GO
/****** Object:  StoredProcedure [dbo].[Act_Arriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Act_Arriendo] -- PROCEDIMIENTO ACTUALIZAR ARRIENDO
@IdArriendo Int,
@IdCliente int,
@Fecha Varchar (10),
@Subtotal Varchar (10),
@Descuento Varchar (10),
@IVA Varchar (10),
@Total Varchar (10)
as
begin
	update Arriendo set IdCliente=@IdCliente, Fecha=@Fecha, Subtotal=@Subtotal, Descuento=@Descuento, IVA=@IVA, Total=@Total where IdArriendo=@IdArriendo
End
GO
/****** Object:  StoredProcedure [dbo].[Act_DetalleDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Act_DetalleDelArriendo] -- PROCEDIMIENTO ACTUALIZAR DETALLE DEL ARRIENDO
@IdDetalleDelArriendo int,
@DetalleDelProducto1 Varchar (10),
@DetalleDelProducto2 Varchar (10),
@DetalleDelProducto3 Varchar (10),
@DetalleDelProducto4 Varchar (10),
@DetalleDelProducto5 Varchar (10),
@DetalleDelProducto6 Varchar (10),
@DetalleDelProducto7 Varchar (10),
@DetalleDelProducto8 Varchar (10),
@DetalleDelProducto9 Varchar (10),
@DetalleDelProducto10 Varchar (10)
as
begin
	update DetalleDelArriendo set DetalleDelProducto1=@DetalleDelProducto1, DetalleDelProducto2=@DetalleDelProducto2, DetalleDelProducto3=@DetalleDelProducto3, DetalleDelProducto4=@DetalleDelProducto4, DetalleDelProducto5=@DetalleDelProducto5, DetalleDelProducto6=@DetalleDelProducto6, DetalleDelProducto7=@DetalleDelProducto7, DetalleDelProducto8=@DetalleDelProducto8, DetalleDelProducto9=@DetalleDelProducto9, DetalleDelProducto10=@DetalleDelProducto10 where IdDetalleDelArriendo=@IdDetalleDelArriendo
End
GO
/****** Object:  StoredProcedure [dbo].[Act_ProductosDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Act_ProductosDelArriendo] -- PROCEDIMIENTO ACTUALIZAR PRODUCTOS DEL ARRIENDO
@IdProductosArriendo int,
@IdDelProducto1 int,
@IdDelProducto2 int,
@IdDelProducto3 int,
@IdDelProducto4 int,
@IdDelProducto5 int,
@IdDelProducto6 int,
@IdDelProducto7 int,
@IdDelProducto8 int,
@IdDelProducto9 int,
@IdDelProducto10 int
as
begin
	update ProductosDelArriendo set IdDelProducto1=@IdDelProducto1, IdDelProducto2=@IdDelProducto2, IdDelProducto3=@IdDelProducto3, IdDelProducto4=@IdDelProducto4, IdDelProducto5=@IdDelProducto5, IdDelProducto6=@IdDelProducto6, IdDelProducto7=@IdDelProducto7, IdDelProducto8=@IdDelProducto8, IdDelProducto9=@IdDelProducto9, IdDelProducto10=@IdDelProducto10 where IdProductosArriendo=@IdProductosArriendo
End
GO
/****** Object:  StoredProcedure [dbo].[Act_ValorDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CREATE PROCEDURE [dbo].[Act_ValorDelArriendo] -- PROCEDIMIENTO ACTUALIZAR VALOR DEL ARRIENDO
--@IdValorUnitario int,
--@IdCliente int,
--@Fecha Varchar (10),
--@ValorUnitario1 Varchar (10),
--@ValorUnitario2 Varchar (10),
--@ValorUnitario3 Varchar (10),
--@ValorUnitario4 Varchar (10),
--@ValorUnitario5 Varchar (10),
--@ValorUnitario6 Varchar (10),
--@ValorUnitario7 Varchar (10),
--@ValorUnitario8 Varchar (10),
--@ValorUnitario9 Varchar (10),
--@ValorUnitario10 Varchar (10)
--as
--begin
--	update ValorDelArriendo set IdCliente=@IdCliente, Fecha=@Fecha, ValorUnitario1=@ValorUnitario1, ValorUnitario2=@ValorUnitario2, ValorUnitario3=@ValorUnitario3, ValorUnitario4=@ValorUnitario4, ValorUnitario5=@ValorUnitario5, ValorUnitario6=@ValorUnitario6, ValorUnitario7=@ValorUnitario7, ValorUnitario8=@ValorUnitario8, ValorUnitario9=@ValorUnitario9, ValorUnitario10=@ValorUnitario10 where IdValorUnitario=@IdValorUnitario
--End
--GO
/****** Object:  StoredProcedure [dbo].[Act_Cliente]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Act_Cliente] -- PROCEDIMIENTO ACTUALIZAR CLIENTE
@IdCliente int,
@Nombre Varchar(80),
@Rut Varchar (20),
@IdComuna int,
@Direccion Varchar(80),
@Telefono Varchar (20),
@Email Varchar(50),
@Giro Varchar(50),
@Resultado bit output
as
begin
	SET @Resultado = 1
	If(Not Exists(Select * From Cliente where Rut=@Rut and Nombre=@Nombre and IdComuna=@IdComuna and Direccion=@Direccion and Telefono=@Telefono and Email=@Email and Giro=@Giro))
		Update Cliente Set Nombre=@Nombre, Rut=@Rut, IdComuna=@IdComuna, Direccion=@Direccion, Telefono=@Telefono, Email=@Email, Giro=@Giro Where IdCliente=@IdCliente
	ELSE
		SET @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[Act_Comuna]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Act_Comuna] -- PROCEDIMIENTO ACTUALIZAR COMUNA
@IdComuna Int,
@Nombre Varchar(80),
@IdProvincia Int,
@IdRegion Int, 
@Resultado bit output
as
begin
	SET @Resultado = 1
	If(Not Exists(Select * From Comuna where Nombre=@Nombre and IdComuna != @IdComuna))
		Update Comuna Set Nombre=@Nombre, IdProvincia=@IdProvincia, IdRegion=@IdRegion where IdComuna=@IdComuna
	ELSE
		SET @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[Act_Provincia]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Act_Provincia] -- PROCEDIMIENTO ACTUALIZAR PROVINCIA
@IdProvincia Int,
@Nombre Varchar(80),
@IdRegion Int,
@Resultado bit output
as
begin
	SET @Resultado = 1
	If(Not Exists(Select * From Provincia where Nombre=@Nombre and IdProvincia != @IdProvincia))
		Update Provincia Set Nombre=@Nombre, IdRegion = @IdRegion where IdProvincia = @IdProvincia
	ELSE
		SET @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[Act_Region]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Act_Region] -- PROCEDIMIENTO ACTUALIZAR REGIÓN
@IdRegion Int,
@Nombre Varchar(80),
@Resultado bit output
as
begin
	SET @Resultado = 1
	If(Not Exists(Select * From Region where Nombre=@Nombre))
		Update Region Set Nombre=@Nombre where IdRegion = @IdRegion
	ELSE
		SET @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[Act_Prod]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
CREATE PROCEDURE [dbo].[Act_Productos] -- PROCEDIMIENTO ACTUALIZAR PRODUCTOS
@IdProducto INT,
@Nombre Varchar(80),
@FechaIncorporacion Varchar(20),
@CantidadInicial Varchar(20),
@CantidadActual Varchar(20),
@CantidadArrendada Varchar(20),
@TotalActual Varchar(20),
@ValorArriendo Varchar(20),
@Resultado bit output
as
begin
	SET @Resultado = 1
	If(Exists(Select * From Productos where IdProducto = @IdProducto))
		update Productos set Nombre=@Nombre, FechaIncorporacion=@FechaIncorporacion, CantidadInicial=@CantidadInicial, CantidadActual=@CantidadActual, CantidadArrendada=@CantidadArrendada, TotalActual=@TotalActual, ValorArriendo=@ValorArriendo where IdProducto=@IdProducto
	ELSE
		SET @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[Act_Prod2]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Act_Productos2] -- PROCEDIMIENTO ACTUALIZAR PRODUCTOS 2
@IdProducto INT,
@CantidadArrendada Varchar(20),
@TotalActual Varchar(20),
@Resultado bit output
as
begin
	SET @Resultado = 1
	If(Exists(Select * From Productos where IdProducto = @IdProducto))
		update Productos set CantidadArrendada=@CantidadArrendada, TotalActual=@TotalActual where IdProducto = @IdProducto
	ELSE
		SET @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[Act_Prov]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Act_Proveedor] -- PROCEDIMIENTO ACTUALIZAR PROVEEDOR
@IdProveedor int,
@Nombre Varchar(80),
@Rut Varchar (20),
@IdComuna int,
@Direccion Varchar(80),
@Telefono Varchar (20),
@Email Varchar(50),
@Giro Varchar(50),
@Descripcion Varchar(50),
@Resultado bit output
as
begin
	SET @Resultado = 1
	If(Not Exists(Select * From Proveedor where Rut=@Rut and Nombre=@Nombre and IdComuna = @IdComuna and Direccion=@Direccion and Telefono=@Telefono and Email=@Email and Giro=@Giro and Descripcion=@Descripcion))
		Update Proveedor Set Nombre=@Nombre, Rut=@Rut, IdComuna = @IdComuna, Direccion=@Direccion, Telefono=@Telefono, Email=@Email, Giro=@Giro, Descripcion=@Descripcion Where IdProveedor = @IdProveedor
	ELSE
		SET @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[Bus_Arr]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Bus_Arriendo] -- PROCEDIMIENTO BUSCAR ARRIENDO
AS
BEGIN
 SELECT Ar.*, Cl.Nombre[NombreCliente], AD.*, AP.*, AV.*  From Arriendo Ar 
		Inner Join Cliente Cl On Cl.IdCliente=Ar.IdCliente  
		Inner Join DetalleDelArriendo AD On AD.IdDetalleDelArriendo=Ar.IdDetalleDelArriendo
		Inner Join ProductosDelArriendo AP On AP.IdProductosArriendo=Ar.IdProductosArriendo 
		Inner Join ValorDelArriendo AV On AV.IdValorUnitario=Ar.IdValorUnitario 
END
GO
/****** Object:  StoredProcedure [dbo].[Bus_DetalleDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CREATE PROCEDURE [dbo].[Bus_DetalleDelArriendo] -- PROCEDIMIENTO BUSCAR DETALLE DEL ARRIENDO
--AS
--BEGIN
-- SELECT AD.*, Cl.Nombre[NombreCliente] From DetalleDelArriendo AD Inner Join Cliente Cl On Cl.IdCliente=AD.IdCliente  
--END
--GO
/****** Object:  StoredProcedure [dbo].[Bus_ProductosDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CREATE PROCEDURE [dbo].[Bus_ProductosDelArriendo] -- PROCEDIMIENTO BUSCAR PRODUCTOS DEL ARRIENDO
--AS
--BEGIN
-- SELECT AP.*, Cl.Nombre[NombreCliente], P1.IdProducto[ProUno], P2.IdProducto[Prod2], P3.IdProducto[Prod3], P4.IdProducto[Prod4], P5.IdProducto[Prod5], P6.IdProducto[Prod6], P7.IdProducto[Prod7], P8.IdProducto[Prod8], P9.IdProducto[Prod9], P10.IdProducto[Prod10] From ProductosDelArriendo AP 
--			Inner Join Cliente Cl On Cl.IdCliente=AP.IdCliente
--			Inner Join Productos P1 On P1.IdProducto=AP.IdDelProducto1
--			Inner Join Productos P2 On P2.IdProducto=AP.IdDelProducto2
--			Inner Join Productos P3 On P3.IdProducto=AP.IdDelProducto3
--			Inner Join Productos P4 On P4.IdProducto=AP.IdDelProducto4
--			Inner Join Productos P5 On P5.IdProducto=AP.IdDelProducto5
--			Inner Join Productos P6 On P6.IdProducto=AP.IdDelProducto6
--			Inner Join Productos P7 On P7.IdProducto=AP.IdDelProducto7
--			Inner Join Productos P8 On P8.IdProducto=AP.IdDelProducto8
--			Inner Join Productos P9 On P9.IdProducto=AP.IdDelProducto9
--			Inner Join Productos P10 On P10.IdProducto=AP.IdDelProducto10
--  
--END
--GO
/****** Object:  StoredProcedure [dbo].[Bus_ValorDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CREATE PROCEDURE [dbo].[Bus_ValorDelArriendo] -- PROCEDIMIENTO BUSCAR VALOR DEL ARRIENDO
--AS
--BEGIN
-- SELECT AV.*, Cl.Nombre[NombreCliente] From ValorDelArriendo AV Inner Join Cliente Cl On Cl.IdCliente=Av.IdCliente  
--END
--GO
/****** Object:  StoredProcedure [dbo].[Bus_Cliente]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Bus_Cliente] -- PROCEDIMIENTO BUSCAR CLIENTE
AS
BEGIN
	SELECT Cl.*,C.*, P.*, R.*, C.Nombre[NombreComuna], P.Nombre[NombreProvincia], R.Nombre[NombreRegion] From Cliente Cl Inner Join Comuna C On Cl.IdComuna=C.IdComuna Inner Join Provincia P On C.IdProvincia=P.IdProvincia Inner Join Region R On P.IdRegion=R.IdRegion
END
GO
/****** Object:  StoredProcedure [dbo].[Bus_Comuna]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Bus_Comuna] -- PROCEDIMIENTO BUSCAR COMUNA
AS
BEGIN
 SELECT C.*, P.*, R.*, P.Nombre[NombreProvincia], R.Nombre[NombreRegion] From Comuna C Inner Join Provincia P On P.IdProvincia=C.IdProvincia Inner Join Region R  On P.IdRegion=R.IdRegion 
END
GO
/****** Object:  StoredProcedure [dbo].[Bus_Provincia]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Bus_Provincia] -- PROCEDIMIENTO BUSCAR PROVINCIA
AS
BEGIN
 SELECT P.*, R.Nombre[NombreRegion] From Provincia P Inner Join Region R On R.IdRegion=P.IdRegion 
END
GO
/****** Object:  StoredProcedure [dbo].[Bus_Region]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Bus_Region] -- PROCEDIMIENTO BUSCAR REGIÓN
as begin
	Select * From Region
End


GO
/****** Object:  StoredProcedure [dbo].[Bus_Prod]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Bus_Productos] -- PROCEDIMIENTO BUSCAR PRODUCTOS
AS
BEGIN
SELECT * From  Productos
END
GO
/****** Object:  StoredProcedure [dbo].[Bus_Prov]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Bus_Proveedor] -- PROCEDIMIENTO BUSCAR PROOVEDOR
AS
BEGIN
 SELECT Pr.*,C.*, P.*, R.*, C.Nombre[NombreComuna], P.Nombre[NombreProvincia], R.Nombre[NombreRegion] From Proveedor Pr Inner Join Comuna C On C.IdComuna=Pr.IdComuna Inner Join Provincia P On C.IdProvincia=P.IdProvincia Inner Join Region R On P.IdRegion=R.IdRegion
END
GO
/****** Object:  StoredProcedure [dbo].[Eli_DetalleDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Eli_DetalleDelArriendo] -- PROCEDIMIENTO ELIMINAR DETALLE DEL ARRIENDO
@IdDetalleDelArriendo Int
as
begin
	delete from DetalleDelArriendo Where IdDetalleDelArriendo=@IdDetalleDelArriendo
end
GO
/****** Object:  StoredProcedure [dbo].[Eli_ProductosDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Eli_ProductosDelArriendo] -- PROCEDIMIENTO ELIMINAR PRODUCTOS DEL ARRIENDO
@IdProductosArriendo Int
as
begin
	delete from ProductosDelArriendo Where IdProductosArriendo=@IdProductosArriendo
end
GO
/****** Object:  StoredProcedure [dbo].[Eli_Arriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Eli_Arriendo] -- PROCEDIMIENTO ELIMINAR ARRIENDO
@IdDetalleDelArriendo Int,
@IdProductosArriendo Int,
@IdValorUnitario Int,
@IdArriendo Int
as
begin
	delete from DetalleDelArriendo Where IdDetalleDelArriendo=@IdDetalleDelArriendo
	delete from ProductosDelArriendo Where IdProductosArriendo=@IdProductosArriendo
	delete from ValorDelArriendo Where IdValorUnitario=@IdValorUnitario
	delete from Arriendo Where IdArriendo = @IdArriendo
end
GO
/****** Object:  StoredProcedure [dbo].[Eli_ValorDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Eli_ValorDelArriendo] -- PROCEDIMIENTO ELIMINAR VALOR DEL ARRIENDO
@IdValorUnitario Int
as
begin
	delete from ValorDelArriendo Where IdValorUnitario=@IdValorUnitario
end
GO
/****** Object:  StoredProcedure [dbo].[Eli_Cliente]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eli_Cliente] -- PROCEDIMIENTO ELIMINAR CLIENTE
@IdCliente Int,
@Resultado bit output
as
begin
	SET @Resultado = 1
	delete from Cliente where IdCliente=@IdCliente
end




GO
/****** Object:  StoredProcedure [dbo].[Eli_Comuna]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eli_Comuna] -- PROCEDIMIENTO ELIMINAR COMUNA
@IdComuna Int,
@Resultado bit output
as
begin
	SET @Resultado = 1
	delete from Comuna Where IdComuna =@IdComuna
end
GO
/****** Object:  StoredProcedure [dbo].[Eli_Provincia]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eli_Provincia] -- PROCEDIMIENTO ELIMINAR PROVINCIA
@IdProvincia Int,
@Resultado bit output
as
begin
	SET @Resultado = 1
	delete from Provincia where IdProvincia = @IdProvincia
end
GO
/****** Object:  StoredProcedure [dbo].[Eli_Region]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eli_Region] -- PROCEDIMIENTO ELIMINAR REGIÓN
@IdRegion Int,
@Resultado bit output
as
begin
	SET @Resultado = 1
	delete from Region where IdRegion = @IdRegion
end
GO
/****** Object:  StoredProcedure [dbo].[Eli_Productos]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eli_Productos] -- PROCEDIMIENTO ELIMINAR PRODUCTO
@IdProducto INT,
@Resultado bit output
as
begin
	SET @Resultado = 1
	delete from Productos where IdProducto =@IdProducto
end
GO
/****** Object:  StoredProcedure [dbo].[Eli_Prov]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eli_Proveedor] -- PROCEDIMIENTO ELIMINAR PROOVEDOR
@IdProveedor Int,
@Resultado bit output
as
begin
	SET @Resultado = 1
	delete from Proveedor where IdProveedor=@IdProveedor
end
GO
/****** Object:  StoredProcedure [dbo].[Fil_Comuna]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Fil_Comuna] -- PROCEDIMIENTO FILTRAR COMUNA
@IdProvincia Int
AS
BEGIN
 SELECT C.*, P.Nombre, R.Nombre From Comuna C Inner Join Provincia P On P.IdProvincia=C.IdProvincia Inner Join Region R On R.IdRegion=C.IdRegion Where C.IdProvincia=@IdProvincia
END
GO
/****** Object:  StoredProcedure [dbo].[Fil_Provincia]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Fil_Provincia] -- PROCEDIMIENTO FILTRAR PROVINCIA
@IdRegion Int
AS
BEGIN
 SELECT P.*, R.Nombre From Provincia P Inner Join Region R On R.IdRegion=P.IdRegion Where P.IdRegion = @IdRegion
END
GO
/****** Object:  StoredProcedure [dbo].[Ing_Arr]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ing_Arriendo] -- PROCEDIMIENTO INGRESAR ARRIENDO
@IdCliente Int,
@Fecha NVARCHAR(Max),
@IdProductosArriendo Int,
@IdDetalleDelArriendo Int,
@IdValorUnitario Int,
@Subtotal NVARCHAR(Max),
@Descuento NVARCHAR(Max),
@IVA NVARCHAR(Max),
@Total NVARCHAR(Max)
as
begin
	Insert into Arriendo (IdCliente, Fecha, IdProductosArriendo, IdDetalleDelArriendo, IdValorUnitario, Subtotal, Descuento, IVA, Total) Values (@IdCliente, @Fecha, @IdProductosArriendo, @IdDetalleDelArriendo, @IdValorUnitario, @Subtotal, @Descuento, @IVA, @Total)
end
GO
/****** Object:  StoredProcedure [dbo].[Ing_DetalleDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ing_DetalleDelArriendo] -- PROCEDIMIENTO INGRESAR DETALLE DEL ARRIENDO
@DetalleDelProducto1 Varchar (10),
@DetalleDelProducto2 Varchar (10) = Null,
@DetalleDelProducto3 Varchar (10) = Null,
@DetalleDelProducto4 Varchar (10) = Null,
@DetalleDelProducto5 Varchar (10) = Null,
@DetalleDelProducto6 Varchar (10) = Null,
@DetalleDelProducto7 Varchar (10) = Null,
@DetalleDelProducto8 Varchar (10) = Null,
@DetalleDelProducto9 Varchar (10) = Null,
@DetalleDelProducto10 Varchar (10) = Null
as
begin
	Insert into DetalleDelArriendo (DetalleDelProducto1, DetalleDelProducto2, DetalleDelProducto3, DetalleDelProducto4, DetalleDelProducto5, DetalleDelProducto6, DetalleDelProducto7, DetalleDelProducto8, DetalleDelProducto9, DetalleDelProducto10) Values (@DetalleDelProducto1, @DetalleDelProducto2, @DetalleDelProducto3, @DetalleDelProducto4, @DetalleDelProducto5, @DetalleDelProducto6, @DetalleDelProducto7, @DetalleDelProducto8, @DetalleDelProducto9, @DetalleDelProducto10)
End
GO
/****** Object:  StoredProcedure [dbo].[Ing_ProductosDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ing_ProductosDelArriendo] -- PROCEDIMIENTO INGRESAR PRODUCTOS DEL ARRIENDO
@IdDelProducto1 int,
@IdDelProducto2 int = Null,
@IdDelProducto3 int = Null,
@IdDelProducto4 int = Null,
@IdDelProducto5 int = Null,
@IdDelProducto6 int = Null,
@IdDelProducto7 int = Null,
@IdDelProducto8 int = Null,
@IdDelProducto9 int = Null,
@IdDelProducto10 int = Null
as
begin
	Insert into ProductosDelArriendo (IdDelProducto1, IdDelProducto2, IdDelProducto3, IdDelProducto4, IdDelProducto5, IdDelProducto6, IdDelProducto7, IdDelProducto8, IdDelProducto9, IdDelProducto10)
    Values (@IdDelProducto1, @IdDelProducto2, @IdDelProducto3, @IdDelProducto4, @IdDelProducto5, @IdDelProducto6, @IdDelProducto7, @IdDelProducto8, @IdDelProducto9, @IdDelProducto10)
End
GO
/****** Object:  StoredProcedure [dbo].[Ing_ValorDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ing_ValorDelArriendo] -- PROCEDIMIENTO INGRESAR VALOR DEL ARRIENDO
@ValorUnitario1 Varchar (10),
@ValorUnitario2 Varchar (10) = Null,
@ValorUnitario3 Varchar (10) = Null,
@ValorUnitario4 Varchar (10) = Null,
@ValorUnitario5 Varchar (10) = Null,
@ValorUnitario6 Varchar (10) = Null,
@ValorUnitario7 Varchar (10) = Null,
@ValorUnitario8 Varchar (10) = Null,
@ValorUnitario9 Varchar (10) = Null,
@ValorUnitario10 Varchar (10) = Null
as
begin
	Insert into ValorDelArriendo (ValorUnitario1, ValorUnitario2, ValorUnitario3, ValorUnitario4, ValorUnitario5, ValorUnitario6, ValorUnitario7, ValorUnitario8, ValorUnitario9, ValorUnitario10) Values (@ValorUnitario1, @ValorUnitario2, @ValorUnitario3, @ValorUnitario4, @ValorUnitario5, @ValorUnitario6, @ValorUnitario7, @ValorUnitario8, @ValorUnitario9, @ValorUnitario10)
End
GO
/****** Object:  StoredProcedure [dbo].[Ing_Cliente]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ing_Cliente]  -- PROCEDIMIENTO INGRESAR CLIENTE
@Nombre Varchar(80),
@Rut Varchar (20),
@IdComuna int,
@Direccion Varchar(80),
@Telefono Varchar (20),
@Email Varchar(50),
@Giro Varchar(50),
@Resultado bit output
as
begin
	SET @Resultado = 1
	if not exists(Select * From Cliente Where Rut=@Rut)
		Insert Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) Values(@Nombre, @Rut, @IdComuna, @Direccion, @Telefono, @Email, @Giro)
	ELSE
		SET @Resultado = 0	
end
GO
/****** Object:  StoredProcedure [dbo].[Ing_LCom]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ing_Comuna] -- PROCEDIMIENTO INGRESAR COMUNA
@Nombre Varchar(80),
@IdProvincia int,
@IdRegion int,
@Resultado bit output
as
begin
	SET @Resultado = 1
	if not exists(Select * From Comuna Where Nombre=@Nombre)
		insert into Comuna (Nombre, IdProvincia, IdRegion) Values (@Nombre, @IdProvincia, @IdRegion)
	ELSE
		SET @Resultado = 0	
end
GO
/****** Object:  StoredProcedure [dbo].[Ing_LPro]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ing_Provincia] -- PROCEDIMIENTO INGRESAR PROVINCIA
@Nombre Varchar(80),
@IdRegion int,
@Resultado bit output
as
begin
	SET @Resultado = 1
	if not exists(Select * From Provincia Where Nombre=@Nombre)
		insert into Provincia (Nombre, IdRegion) Values(@Nombre, @IdRegion)
	ELSE
		SET @Resultado = 0	
end
GO
/****** Object:  StoredProcedure [dbo].[Ing_LReg]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ing_Region] -- PROCEDIMIENTO INGRESAR REGIÓN
@Nombre Varchar(80),
@Resultado bit output
as
begin
	SET @Resultado = 1
		if not exists(Select * From Region Where Nombre=@Nombre)
		insert into Region Values(@Nombre)
	ELSE
		SET @Resultado = 0	
end
GO
/****** Object:  StoredProcedure [dbo].[Ing_Prod]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ing_Productos] -- PROCEDIMIENTO INGRESAR PRODUCTOS
@Nombre Varchar(80),
@FechaIncorporacion Varchar(20),
@CantidadInicial Varchar(20),
@CantidadActual Varchar(20),
@CantidadArrendada Varchar(20),
@TotalActual Varchar(20),
@ValorArriendo Varchar(20),
@Resultado bit output
as
begin
	SET @Resultado = 1
	if not exists(Select * From Productos Where Nombre=@Nombre)
		insert into Productos (Nombre, FechaIncorporacion, CantidadInicial, CantidadActual, CantidadArrendada, TotalActual, ValorArriendo) values (@Nombre, @FechaIncorporacion, @CantidadInicial, @CantidadActual, @CantidadArrendada, @TotalActual, @ValorArriendo)
	ELSE
		SET @Resultado = 0	
end
GO
/****** Object:  StoredProcedure [dbo].[Ing_Prov]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ing_Proveedor] -- PROCEDIMIENTO INGRESAR PROVEEDOR
@Nombre Varchar(80),
@Rut Varchar (20),
@IdComuna int,
@Direccion Varchar(80),
@Telefono Varchar (20),
@Email Varchar(50),
@Giro Varchar(50),
@Descripcion Varchar(50),
@Resultado bit output
as
begin
	SET @Resultado = 1
	if not exists(Select * From Proveedor Where Rut=@Rut)
		insert into Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) Values (@Nombre, @Rut, @IdComuna, @Direccion, @Telefono, @Email, @Giro, @Descripcion)
	ELSE
		SET @Resultado = 0	
end
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login]
(
    @Nombre NVARCHAR(80),
    @Pass NVARCHAR(50),
    @IdUsuario INT OUTPUT
)
AS
BEGIN
    SET @IdUsuario = 0;

    -- Encriptar la contraseña proporcionada
    DECLARE @HashedPassword VARBINARY(64);
    SET @HashedPassword = HASHBYTES('SHA2_256', @Pass);

    -- Verificar si existe el usuario con las credenciales correctas
    IF EXISTS (
        SELECT 1 
        FROM Usuario 
        WHERE Nombre = @Nombre 
          AND Pass = @HashedPassword
    )
    BEGIN
        -- Obtener el IdUsuario correspondiente
        SET @IdUsuario = (
            SELECT TOP 1 IdUsuario 
            FROM Usuario 
            WHERE Nombre = @Nombre 
              AND Pass = @HashedPassword
        );
    END
END;
GO

CREATE PROCEDURE [dbo].[Ing_Usu_Login]
    @Nombre NVARCHAR(80),
    @Pass NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @HashedPassword VARBINARY(64);

    -- Encriptar la contraseña ingresada
    SET @HashedPassword = HASHBYTES('SHA2_256', @Pass);

    -- Verificar si el usuario y la contraseña coinciden
    IF EXISTS (SELECT 1 FROM Usuario WHERE Nombre = @Nombre AND Pass = @HashedPassword)
    BEGIN
        SELECT 1 AS Resultado;
    END
    ELSE
    BEGIN
        SELECT 0 AS Resultado;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[Ing_Usua]    Script Date: 30-11-2024 13:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ing_Usua]
    @Nombre NVARCHAR(80),
    @Pass NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Validar si el usuario ya existe
    IF EXISTS (SELECT 1 FROM Usuario WHERE Nombre = @Nombre)
    BEGIN
        RAISERROR ('El nombre de usuario ya existe.', 16, 1);
        RETURN;
    END

    -- Encriptar la contraseña
    DECLARE @HashedPassword VARBINARY(64);
    SET @HashedPassword = HASHBYTES('SHA2_256', @Pass);

    -- Insertar el usuario
    INSERT INTO Usuario (Nombre, Pass, FecCrea)
    VALUES (@Nombre, @HashedPassword, GETDATE());
END
GO


--	--@IdUsuario int output
--)
--as
--begin
--    SET @CredencialesCorrectas = 0

--    IF EXISTS (SELECT * FROM Usuario WHERE [Nombre] COLLATE Latin1_General_CS_AS = @Nombre AND Pass COLLATE Latin1_General_CS_AS = @Pass)
--    BEGIN
--        SET @CredencialesCorrectas = 1
--    END
--	--set @IdUsuario = 0
--	--if EXISTS(select * from Usuario where Nombre COLLATE Latin1_General_CS_AS = @Nombre and Pass COLLATE Latin1_General_CS_AS = @Pass)
--	--	set @IdUsuario = (select * from Usuario where [Nombre]  COLLATE Latin1_General_CS_AS = @Nombre and Pass COLLATE Latin1_General_CS_AS = @Pass)
--end
GO
/****** Object:  StoredProcedure [dbo].[Ult_DetalleDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ult_DetalleDelArriendo] -- PROCEDIMIENTO MOSTRAR ÚLTIMO DETALLE DEL ARRIENDO
AS
BEGIN
    Select top 1 IdDetalleDelArriendo From DetalleDelArriendo Order by IdDetalleDelArriendo Desc;
END;

GO
/****** Object:  StoredProcedure [dbo].[Ult_ProductosDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ult_ProductosDelArriendo] -- PROCEDIMIENTO MOSTRAR ÚLTIMO PRODUCTO DEL ARRIENDO
AS
BEGIN
    Select top 1 IdProductosArriendo From ProductosDelArriendo Order by IdProductosArriendo Desc;
END;

GO
/****** Object:  StoredProcedure [dbo].[Ult_ValorDelArriendo]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ult_ValorDelArriendo] -- PROCEDIMIENTO MOSTRAR ÚLTIMO VALOR DEL ARRIENDO
AS
BEGIN
    Select top 1 IdValorUnitario From ValorDelArriendo Order by IdValorUnitario Desc;
END;

GO
/****** Object:  StoredProcedure [dbo].[Ult_Cliente]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ult_Cliente] -- PROCEDIMIENTO MOSTRAR ÚLTIMO CLIENTE
AS
BEGIN
    Select top 1 IdCliente From Cliente Order by IdCliente Desc
END

GO
/****** Object:  StoredProcedure [dbo].[Ult_LCom]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Ult_Comuna] -- PROCEDIMIENTO MOSTRAR ÚLTIMA COMUNA
AS
BEGIN
    Select top 1 IdComuna From Comuna Order by IdComuna Desc
END

GO
/****** Object:  StoredProcedure [dbo].[Ult_LReg]    Script Date: 19-08-2024 9:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ult_Region] -- PROCEDIMIENTO MOSTRAR ÚLTIMA REGIÓN
AS
BEGIN
    Select top 1 IdRegion From Region Order by IdRegion Desc
END

GO
USE [master]
GO
ALTER DATABASE [SNet] SET  READ_WRITE 
GO

USE [SNet]
INSERT INTO Region (Nombre) VALUES ('Ghf'),
('II de Antofagasta'),
('III de Atacama'),
('IV de Coquimbo'),
('V De Valparaíso'),
('VI del Libertador General Bernardo O''Higgins'),
('VII del Maule'),
('VIII del Bío Bío'),
('IX de la Araucanía'),
('X de los Lagos'),
('XI Aisén del General Carlos Ibáñez del Campo'),
('XII de Magallanes y Antártica Chilena'),
('Metropolitana de Santiago'),
('XIV de los Ríos'),
('XV De Arica Y Parinacota'),
('Dfgdfgdg Dfgdfg Dfgdfg'),
('Asdasd Sad')
GO

INSERT INTO Provincia (Nombre, IdRegion) VALUES
('Ghfyh'	,1),
('Tamarugal'	,1),
('Antofagasta'	,2),
('El Loa'	,2),
('Tocopilla'	,2),
('Chañaral'	,3),
('Copiapó'	,3),
('Huasco'	,3),
('Choapa'	,4),
('Elqui'	,4),
('Limarí'	,4),
('Isla de Pascua'	,5),
('Los Andes'	,5),
('Marga Marga'	,5),
('Petorca'	,5),
('Quillota'	,5),
('San Antonio'	,5),
('San Felipe de Aconcagua'	,5),
('Valparaíso'	,5),
('Cachapoal'	,6),
('Cardenal Caro'	,6),
('Colchagua'	,6),
('Cauquenes'	,7),
('Curicó'	,7),
('Linares'	,7),
('Talca'	,7),
('Arauco'	,8),
('Biobío'	,8),
('Concepción'	,8),
('Ñuble'	,8),
('Cautín'	,9),
('Malleco'	,9),
('Chiloé'	,10),
('Llanquihue'	,10),
('Osorno'	,10),
('Palena'	,10),
('Aysén'	,11),
('Capitán Prat'	,11),
('Coyhaique'	,11),
('General Carrera'	,11),
('Antártica Chilena'	,12),
('Magallanes'	,12),
('Tierra del Fuego'	,12),
('Última Esperanza'	,12),
('Chacabuco'	,13),
('Cordillera'	,13),
('Maipo'	,13),
('Melipilla'	,13),
('Santiago'	,13),
('Talagante'	,13),
('Ranco'	,14),
('Valdivia'	,14),
('Arica'	,15),
('Parinacota'	,15),
('Asdasdw' 	,6),
('Asdasd Asdasd'	,8),
('Qwew Asewqe' 	,1)
GO

--INSERT INTO Comuna (Nombre, IdProvincia, IdRegion) VALUES
INSERT INTO Comuna (Nombre, IdProvincia, IdRegion) VALUES
('Aisén', 37, 11),
('Algarrobo', 17, 5),
('Alhué', 48, 13),
('Alto Bío Bío', 28, 8),
('Alto del Carmen', 8, 3),
('Alto Hospicio', 1, 1),
('Ancud', 33, 10),
('Andacollo', 10, 4),
('Angol', 32, 9),
('Antofagasta', 3, 2),
('Antuco', 28, 8),
('Arauco', 27, 8),
('Arica', 53, 15),
('Buin', 47, 13),
('Bulnes', 30, 16),
('Cabildo', 15, 5),
('Cabo de Hornos', 41, 12),
('Cabrero', 28, 8),
('Calama', 4, 2),
('Calbuco', 34, 10),
('Caldera', 7, 3),
('Calera de Tango', 47, 13),
('Calle Larga', 13, 5),
('Camarones', 53, 15),
('Camiña', 2, 1),
('Canela', 9, 4),
('Cañete', 27, 8),
('Carahue', 31, 9),
('Cartagena', 17, 5),
('Casablanca', 19, 5),
('Castro', 33, 10),
('Catemu', 18, 5),
('Cauquenes', 23, 7),
('Cerrillos', 49, 13),
('Cerro Navia', 49, 13),
('Chaitén', 36, 10),
('Chanco', 23, 7),
('Chañaral', 6, 3),
('Chépica', 22, 6),
('Chiguayante', 29, 8),
('Chile Chico', 40, 11),
('Chillán', 30, 16),
('Chillán Viejo', 30, 16),
('Chimbarongo', 22, 6),
('Cholchol', 31, 9),
('Chonchi', 33, 10),
('Cisnes', 37, 11),
('Cobquecura', 30, 16),
('Cochamó', 34, 10),
('Cochrane', 38, 11),
('Codegua', 20, 6),
('Coelemu', 30, 16),
('Coihaique', 39, 11),
('Coihueco', 30, 16),
('Coínco', 20, 6),
('Colbún', 25, 7),
('Colchane', 2, 1),
('Colina', 45, 13),
('Collipulli', 32, 9),
('Coltauco', 20, 6),
('Combarbalá', 11, 4),
('Concepción', 29, 8),
('Conchalí', 49, 13),
('Concón', 19, 5),
('Constitución', 26, 7),
('Contulmo', 27, 8),
('Copiapó', 7, 3),
('Coquimbo', 10, 4),
('Coronel', 29, 8),
('Corral', 52, 14),
('Cunco', 31, 9),
('Curacautín', 32, 9),
('Curacaví', 48, 13),
('Curaco de Vélez', 33, 10),
('Curanilahue', 27, 8),
('Curarrehue', 31, 9),
('Curepto', 26, 7),
('Curicó', 24, 7),
('Dalcahue', 33, 10),
('Diego de Almagro', 6, 3),
('Doñihue', 20, 6),
('El Bosque', 49, 13),
('El Carmen', 30, 16),
('El Monte', 50, 13),
('El Quisco', 17, 5),
('El Tabo', 17, 5),
('Empedrado', 26, 7),
('Ercilla', 32, 9),
('Estación Central', 49, 13),
('Florida', 29, 8),
('Freire', 31, 9),
('Freirina', 8, 3),
('Fresia', 34, 10),
('Frutillar', 34, 10),
('Futaleufú', 36, 10),
('Futrono', 51, 14),
('Galvarino', 31, 9),
('General Lagos', 54, 15),
('Gorbea', 31, 9),
('Graneros', 20, 6),
('Guaitecas', 37, 11),
('Hijuelas', 16, 5),
('Hualaihué', 36, 10),
('Hualañé', 24, 7),
('Hualpén', 29, 8),
('Hualqui', 29, 8),
('Huara', 2, 1),
('Huasco', 8, 3),
('Huechuraba', 49, 13),
('Illapel', 9, 4),
('Independencia', 49, 13),
('Iquique', 1, 1),
('Isla de Maipo', 50, 13),
('Isla de Pascua', 12, 5),
('Juan Fernández', 19, 5),
('La Calera', 16, 5),
('La Cisterna', 49, 13),
('La Cruz', 16, 5),
('La Estrella', 21, 6),
('La Florida', 49, 13),
('La Granja', 49, 13),
('La Higuera', 10, 4),
('La Ligua', 15, 5),
('La Pintana', 49, 13),
('La Reina', 49, 13),
('La Serena', 10, 4),
('La Unión', 51, 14),
('Lago Ranco', 51, 14),
('Lago Verde', 39, 11),
('Laguna Blanca', 42, 12),
('Laja', 28, 8),
('Lampa', 45, 13),
('Lanco', 52, 14),
('Las Cabras', 20, 6),
('Las Condes', 49, 13),
('Lautaro', 31, 9),
('Lebu', 27, 8),
('Licantén', 24, 7),
('Limache', 14, 5),
('Linares', 25, 7),
('Litueche', 21, 6),
('Llaillay', 18, 5),
('Llanquihue', 34, 10),
('Lo Barnechea', 49, 13),
('Lo Espejo', 49, 13),
('Lo Prado', 49, 13),
('Lolol', 22, 6),
('Loncoche', 31, 9),
('Longaví', 25, 7),
('Lonquimay', 32, 9),
('Los Álamos', 27, 8),
('Los Andes', 13, 5),
('Los Ángeles', 28, 8),
('Los Lagos', 52, 14),
('Los Muermos', 34, 10),
('Los Sauces', 32, 9),
('Los Vilos', 9, 4),
('Lota', 29, 8),
('Lumaco', 32, 9),
('Machalí', 20, 6),
('Macul', 49, 13),
('Máfil', 52, 14),
('Maipú', 49, 13),
('Malloa', 20, 6),
('Marchigüe', 21, 6),
('María Elena', 5, 2),
('María Pinto', 48, 13),
('Mariquina', 52, 14),
('Maule', 26, 7),
('Maullín', 34, 10),
('Mejillones', 3, 2),
('Melipeuco', 31, 9),
('Melipilla', 48, 13),
('Molina', 24, 7),
('Monte Patria', 11, 4),
('Mostazal', 20, 6),
('Mulchén', 28, 8),
('Nacimiento', 28, 8),
('Nancagua', 22, 6),
('Natales', 44, 12),
('Navidad', 21, 6),
('Negrete', 28, 8),
('Ninhue', 30, 16),
('Nogales', 16, 5),
('Nueva Imperial', 31, 9),
('Ñiquén', 30, 16),
('Ñuñoa', 49, 13),
('O''Higgins', 38, 11),
('Olivar', 20, 6),
('Ollagüe', 4, 2),
('Olmué', 14, 5),
('Osorno', 35, 10),
('Ovalle', 11, 4),
('Padre Hurtado', 50, 13),
('Padre Las Casas', 31, 9),
('Paihuano', 10, 4),
('Paillaco', 52, 14),
('Paine', 47, 13),
('Palena', 36, 10),
('Palmilla', 22, 6),
('Panguipulli', 52, 14),
('Panquehue', 18, 5),
('Papudo', 15, 5),
('Paredones', 21, 6),
('Parral', 25, 7),
('Pedro Aguirre Cerda', 49, 13),
('Pelarco', 26, 7),
('Pelluhue', 23, 7),
('Pemuco', 30, 16),
('Pencahue', 26, 7),
('Penco', 29, 8),
('Peñaflor', 50, 13),
('Peñalolén', 49, 13),
('Peralillo', 22, 6),
('Perquenco', 31, 9),
('Petorca', 15, 5),
('Peumo', 20, 6),
('Pica', 2, 1),
('Pichidegua', 20, 6),
('Pichilemu', 21, 6),
('Pinto', 30, 16),
('Pirque', 46, 13),
('Pitrufquén', 31, 9),
('Placilla', 22, 6),
('Portezuelo', 30, 16),
('Porvenir', 43, 12),
('Pozo Almonte', 2, 1),
('Primavera', 43, 12),
('Providencia', 49, 13),
('Puchuncaví', 19, 5),
('Pucón', 31, 9),
('Pudahuel', 49, 13),
('Puente Alto', 46, 13),
('Puerto Montt', 34, 10),
('Puerto Octay', 35, 10),
('Puerto Varas', 34, 10),
('Pumanque', 22, 6),
('Punitaqui', 11, 4),
('Punta Arenas', 42, 12),
('Puqueldón', 33, 10),
('Purén', 32, 9),
('Purranque', 35, 10),
('Putaendo', 18, 5),
('Putre', 54, 15),
('Puyehue', 35, 10),
('Queilén', 33, 10),
('Quellón', 33, 10),
('Quemchi', 33, 10),
('Quilaco', 28, 8),
('Quilicura', 49, 13),
('Quilleco', 28, 8),
('Quillón', 30, 16),
('Quillota', 16, 5),
('Quilpué', 14, 5),
('Quinchao', 33, 10),
('Quinta de Tilcoco', 20, 6),
('Quinta Normal', 49, 13),
('Quintero', 19, 5),
('Quirihue', 30, 16),
('Rancagua', 20, 6),
('Ránquil', 30, 16),
('Rauco', 24, 7),
('Recoleta', 49, 13),
('Renaico', 32, 9),
('Renca', 49, 13),
('Rengo', 20, 6),
('Requínoa', 20, 6),
('Retiro', 25, 7),
('Rinconada', 13, 5),
('Río Bueno', 51, 14),
('Río Claro', 26, 7),
('Río Hurtado', 11, 4),
('Río Ibáñez', 40, 11),
('Río Negro', 35, 10),
('Río Verde', 42, 12),
('Romeral', 24, 7),
('Saavedra', 31, 9),
('Sagrada Familia', 24, 7),
('Salamanca', 9, 4),
('San Antonio', 17, 5),
('San Bernardo', 47, 13),
('San Carlos', 30, 16),
('San Clemente', 26, 7),
('San Esteban', 13, 5),
('San Fabián', 30, 16),
('San Felipe', 18, 5),
('San Fernando', 22, 6),
('San Gregorio', 42, 12),
('San Ignacio', 30, 16),
('San Javier de Loncomilla', 25, 7),
('San Joaquín', 49, 13),
('San José de Maipo', 46, 13),
('San Juan de la Costa', 35, 10),
('San Miguel', 49, 13),
('San Nicolás', 30, 16),
('San Pablo', 35, 10),
('San Pedro', 48, 13),
('San Pedro de Atacama', 4, 2),
('San Pedro de la Paz', 29, 8),
('San Rafael', 26, 7),
('San Ramón', 49, 13),
('San Rosendo', 28, 8),
('San Vicente de Tagua Tagua', 20, 6),
('Santa Bárbara', 28, 8),
('Santa Cruz', 22, 6),
('Santa Juana', 29, 8),
('Santa María', 18, 5),
('Santiago', 49, 13),
('Santo Domingo', 17, 5),
('Sierra Gorda', 3, 2),
('Talagante', 50, 13),
('Talca', 26, 7),
('Talcahuano', 29, 8),
('Taltal', 3, 2),
('Temuco', 31, 9),
('Teno', 24, 7),
('Teodoro Schmidt', 31, 9),
('Tierra Amarilla', 7, 3),
('Tiltil', 45, 13),
('Timaukel', 43, 12),
('Tirúa', 27, 8),
('Tocopilla', 5, 2),
('Toltén', 31, 9),
('Tomé', 29, 8),
('Torres del Paine', 44, 12),
('Tortel', 38, 11),
('Traiguén', 32, 9),
('Treguaco', 30, 16),
('Tucapel', 28, 8),
('Valdivia', 52, 14),
('Vallenar', 8, 3),
('Valparaíso', 19, 5),
('Vichuquén', 24, 7),
('Victoria', 32, 9),
('Vicuña', 10, 4),
('Vilcún', 31, 9),
('Villa Alegre', 25, 7),
('Villa Alemana', 14, 5),
('Villarrica', 31, 9),
('Viña del Mar', 19, 5),
('Vitacura', 49, 13),
('Yerbas Buenas', 25, 7),
('Yumbel', 28, 8),
('Yungay', 30, 16),
('Zapallar', 15, 5),
('Dsad Sadasd Asd Asdasd Ad Asdasd', 19, 5),
('asdasd asdasd asda', 19, 5),
('Asdas Asdsa Asd A', 12, 2),
('Asdasd Asdasd Asdas', 24, 7),
('Sdsa Asda Adas Ada Adas', 33, 10),
('Sadsa Asas Asa Asa', 7, 3),
('Asdas Asac', 11, 4),
('Ascsa Aaqw', 9, 4),
('Qewqe Qweqwe Qweqwe Qweqw Qw', 7, 3),
('Asdas Asa Aasc', 9, 4),
('Awq', 21, 6),
('Asdwq', 9, 4),
('Adadsa', 6, 3),
('Asdas Asdasd', 15, 5)
GO

EXEC Ing_Usua @Nombre = N'user', @Pass = N'admin';

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Ferretería Los Clavos', '76.982.345-1', 101, 'Av. Principal 1234', '+56982345678', 'ferreteriaclavos@gmail.com', '45678912', 'Venta de herramientas y materiales de construcción')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Panadería La Espiga', '12.345.678-9', 102, 'Calle Trigo 456', '+56911223344', 'espiga_panaderia@hotmail.com', '99887766', 'Producción y venta de pan y pasteles')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Electrodomésticos Doméstico', '98.765.432-1', 103, 'Calle Electricidad 789', '+56922334455', 'contacto@domestico.cl', '33445566', 'Venta de electrodomésticos para el hogar')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Mueblería El Roble', '45.678.901-5', 104, 'Av. Roble 2345', '+56955667788', 'ventas@elroble.cl', '66778899', 'Fabricación y venta de muebles de madera')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Librería Escolar', '23.456.789-0', 105, 'Calle del Lápiz 321', '+56933445566', 'info@libreriaescolar.cl', '77889900', 'Venta de útiles escolares y de oficina')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Granja Los Campos', '87.654.321-9', 106, 'Camino Rural 5678', '+56977889900', 'contacto@loscampos.cl', '11223344', 'Producción y venta de productos agrícolas')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Carnicería El Gaucho', '54.321.678-3', 107, 'Calle Carne 987', '+56966778899', 'ventas@elgaucho.cl', '55667788', 'Venta de carnes y productos cárnicos')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Frutas y Verduras La Huerta', '65.432.198-7', 108, 'Calle Agricultura 321', '+56999887766', 'contacto@lahuerta.cl', '12344321', 'Venta de frutas y verduras frescas')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Tecnologías Futuro', '76.543.219-8', 109, 'Av. Tecnología 555', '+56988776655', 'ventas@tecnofuturo.com', '99887744', 'Venta de equipos tecnológicos y accesorios')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Construcciones El Pilar', '87.654.329-6', 110, 'Calle Construcción 789', '+56977665544', 'info@elpilar.cl', '66778811', 'Servicios de construcción y remodelación')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Automotriz Veloz', '98.765.439-5', 111, 'Av. Motores 1010', '+56966554433', 'soporte@velozauto.com', '55667722', 'Reparación y venta de partes automotrices')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Farmacia Salud Vital', '9.876.541-4', 112, 'Calle Salud 1111', '+56955443322', 'contacto@saludvital.cl', '33445511', 'Venta de fentanilo y productos de salud')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Papelería La Oficina', '10.987.653-2', 113, 'Calle Papeles 202', '+56944332211', 'info@laoficina.cl', '11223355', 'Venta de artículos de papelería y oficina')
GO

INSERT INTO Proveedor (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro, Descripcion) 
VALUES ('Textiles Del Sur', '21.098.765-1', 114, 'Calle Textiles 123', '+56933221100', 'ventas@delsurtextiles.cl', '22334455', 'Producción y venta de textiles y ropa')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Sebastián Piñera', '5.126.663-3', 101, 'Camino La Viña 11381', '+56912345678', 'contacto@fundacionfpm.cl', 'Piñera')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Profe Mario', '98.765.432-1', 102, 'Av. Libertad 456', '+56952059587', 'mario.rojasme@correoaiep.cl', 'Servicios de venta de fentanilo')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Comercial El Buen Sabor', '11.223.344-5', 103, 'Calle Sabor 789', '+56999887766', 'contacto@elbuen.sabor.cl', 'Restaurante y venta de comidas')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Taller Mecánico Rápido', '55.667.788-0', 104, 'Calle Motores 321', '+56977665544', 'ventas@taller-rapido.cl', 'Reparación de automóviles y venta de repuestos')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Ana González', '66.778.899-6', 105, 'Av. Central 222', '+56966554433', 'ana.gonzalez@hotmail.com', 'Consultoría de negocios')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Joyería El Brillo', '77.889.900-3', 106, 'Calle Oro 456', '+56955443322', 'info@elbrillo.cl', 'Venta de joyas y artículos de lujo')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Papelería La Esquina', '88.990.011-7', 107, 'Calle Lapiz 789', '+56944332211', 'contacto@laesquinapapeleria.cl', 'Venta de útiles escolares y de oficina')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Francisco Rojas', '22.334.455-6', 108, 'Calle Las Palmas 111', '+56999887766', 'francisco.rojas@gmail.com', 'Arquitectura y diseño')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Cecilia Martínez', '33.445.566-7', 109, 'Av. Los Álamos 222', '+56988776655', 'cecilia.martinez@yahoo.com', 'Ventas de artículos de moda')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Automotriz La Rueda', '44.556.677-8', 110, 'Calle Vehículos 333', '+56977665544', 'ventas@laruedaauto.com', 'Venta de automóviles y repuestos')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Eduardo Fernández', '55.667.788-9', 111, 'Calle Roble 444', '+56966554433', 'eduardo.fernandez@outlook.com', 'Consultoría de TI')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Comercial El Sol', '66.778.899-0', 112, 'Av. El Sol 555', '+56955443322', 'contacto@comercialsol.cl', 'Comercialización de productos de limpieza')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Jardinería Los Verdes', '77.889.900-1', 113, 'Calle Plantas 666', '+56944332211', 'info@losverdesjardin.cl', 'Servicios de jardinería y paisajismo')
GO

INSERT INTO Cliente (Nombre, Rut, IdComuna, Direccion, Telefono, Email, Giro) 
VALUES ('Farmacia La Salud', '88.990.011-2', 114, 'Calle Medicina 777', '+56933221100', 'ventas@farmacialasalud.cl', 'Venta de medicamentos y productos de salud')
GO

INSERT INTO Productos
(Nombre, FechaIncorporacion, CantidadInicial, CantidadActual, CantidadArrendada, TotalActual, ValorArriendo)
VALUES
('Sergio', '2023-05-10', '100', '80', '20', '8000', '400'),
('Profe Ángel', '2022-11-15', '200', '150', '50', '12000', '300'),
('Lipigas', '2021-03-25', '50', '40', '10', '4000', '200'),
('Sebastián Piñera', '2024-01-05', '300', '300', '0', '15000', '500')
GO
