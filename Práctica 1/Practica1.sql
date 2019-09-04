USE [master]
GO
/****** Object:  Database [DB1]    Script Date: 04/09/2019 09:22:40 a. m. ******/
DROP DATABASE [DB1]
GO
/****** Object:  Database [DB1]    Script Date: 04/09/2019 09:22:40 a. m. ******/
CREATE DATABASE [DB1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB1.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB1_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB1] SET  MULTI_USER 
GO
ALTER DATABASE [DB1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DB1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB1] SET  READ_WRITE 
GO
