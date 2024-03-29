/*******************************************
            CARLOS 17-01-2018
Limpa as tabelas de Lote e LoteInutNFe
Compacta o banco de dados automaticamente

*******************************************/


USE [NFE]

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NFe
	DROP CONSTRAINT FK_NFe_Lote
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NFe WITH NOCHECK ADD CONSTRAINT
	FK_NFe_Lote FOREIGN KEY
	(
	IdLote
	) REFERENCES dbo.Lote
	(
	IdLote
	) ON UPDATE  NO ACTION 
	 ON DELETE  SET NULL
	
GO
ALTER TABLE dbo.NFe
	NOCHECK CONSTRAINT FK_NFe_Lote
GO
COMMIT

-- LIMPANDO A TABELA Lote, 2000 REGISTROS POR VEZ

ALTER DATABASE [NFE] SET RECOVERY SIMPLE;

-- CONTADOR DE LINHAS DELETADAS
DECLARE @Deleted_Rows INT;
SET @Deleted_Rows = 1;

-- PEGA A DATA MENOR QUE 3 MESES 
DECLARE @DATA AS DATETIME;
SET @DATA = DATEADD(MONTH,-2,GETDATE());
-- PEGA A DATA MENOR QUE 12 MESES
DECLARE @DATA1 AS DATETIME;
SET @DATA1 = DATEADD(MONTH,-11,GETDATE());

-- SE EXISTIR REGISTROS �PTOS EU APAGO, SEN�O NEM PERCO TEMPO
IF EXISTS (SELECT TOP(1) DtTransmissao FROM Lote WHERE (Lote.DtTransmissao < @DATA))
BEGIN
BEGIN TRANSACTION
	WHILE (@Deleted_Rows > 0)
		BEGIN
			DELETE TOP(2000) FROM Lote -- APAGO 2000 LINHAS POR VEZ 
			WHERE (Lote.DtTransmissao < @DATA AND Lote.fgTransmitido = 1 AND Lote.fgConfirmado = 1) OR (Lote.DtTransmissao < @DATA AND Lote.fgTransmitido = 0)
			SET @Deleted_Rows = @@ROWCOUNT;		
		END
COMMIT TRANSACTION
END
ELSE
BEGIN
PRINT N'N�O H� REGISTROS NA TABELA Lote COM DATA MENOR QUE -> ' + CONVERT(NVARCHAR, @DATA) + ' OPERA��O CANCELADA!'
END

-- LIMPANDO A TABELA LoteInutNFe, 2000 REGISTROS POR VEZ
-- CASO SEJA CITYCOL EU APAGO SOMENTE INUTILIZA��ES REJEITADAS.
SET @Deleted_Rows = 1;

IF EXISTS (SELECT TOP(1) DtTransmissao FROM LoteInutNFe WHERE (LoteInutNFe.DtTransmissao < @DATA))
BEGIN
BEGIN TRANSACTION
	IF EXISTS (SELECT TOP(1) [RazaoSocial] FROM [DadosEmitente] WHERE ([RazaoSocial] LIKE '%LOJAS%CITYCOL%'))
	BEGIN
	RAISERROR ('� CITYCOL, DELETANDO APENAS AS INUTILIZA��ES REJEITADAS',0,1) WITH NOWAIT
	BEGIN TRANSACTION		
		WHILE (@Deleted_Rows > 0)
			BEGIN
				DELETE TOP(2000) FROM LoteInutNFe -- APAGO 2000 LINHAS POR VEZ
				WHERE (LoteInutNFe.fgInut = 1 AND [cStat] <> 102)
				SET @Deleted_Rows = @@ROWCOUNT;			
			END
	COMMIT TRANSACTION
	END
	ELSE	
	BEGIN
	BEGIN TRANSACTION		
	SET @Deleted_Rows = 1;
		WHILE (@Deleted_Rows > 0)
			BEGIN
				DELETE TOP(2000) FROM LoteInutNFe -- APAGO 2000 LINHAS POR VEZ
				WHERE (LoteInutNFe.fgInut = 0) OR (LoteInutNFe.dhRecbto < @DATA1 AND LoteInutNFe.fgInut = 1)
				SET @Deleted_Rows = @@ROWCOUNT;			
			END
	COMMIT TRANSACTION
	END
COMMIT TRANSACTION
END
ELSE
BEGIN
PRINT N'N�O H� REGISTROS NA TABELA LoteInutNFe COM DATA MENOR QUE -> ' + CONVERT(NVARCHAR, @DATA)
END
COMMIT TRANSACTION

-- INICIANDO PROCESSO DE COMPACTA��O DO BANCO NFE
USE [NFE]
GO
RAISERROR ('Iniciando processo de compacta��o do banco.',0,1) WITH NOWAIT 
PRINT N''+RTRIM(CAST(GETDATE() AS NVARCHAR(30))) 
PRINT N'=================================================='
-- COMPACTANDO O BANCO PARA LIBERAR ESPA�O EM DISCO
-- RETORNA O FILENAME, NESTE CASO O NFe_data.mdf
DECLARE @DBNAME AS NVARCHAR(1000)
SET @DBNAME = (SELECT TOP(1) name FROM sys.database_files WHERE type_desc = 'ROWS')
RAISERROR ('Iniciando compacta��o do banco de dados NFe.',0,1) WITH NOWAIT 
PRINT N''+RTRIM(CAST(GETDATE() AS NVARCHAR(30))) 

DBCC SHRINKDATABASE(@DBNAME, TRUNCATEONLY)

RAISERROR ('Compacta��o realizada.',0,1) WITH NOWAIT 
PRINT N''+RTRIM(CAST(GETDATE() AS NVARCHAR(30))) 

DECLARE @LOGNAME AS NVARCHAR(1000)
SET @LOGNAME = (SELECT TOP(1) name FROM sys.database_files WHERE type_desc = 'LOG')

-- RETORNA O ESPA�O DISPONIVEL PARA COMPACTA��O (CAIU EM DESUSO DEPOIS QUE EU PASSEI A USAR DIRETO O "TRUNCATEONLY")
DECLARE @FREESPACE AS INT
SET @FREESPACE = (
SELECT TOP(1) ([size]/128.0 - ([size]/128.0 - CAST(FILEPROPERTY(name, 'SpaceUsed') AS INT)/128.0)+50) AS FreeSpace
FROM sys.database_files
WHERE type_desc = 'ROWS'
)

DECLARE @LOGSPACE AS INT
SET @LOGSPACE = (
SELECT TOP(1) ([size]/128.0 - ([size]/128.0 - CAST(FILEPROPERTY(name, 'SpaceUsed') AS INT)/128.0)+20) AS LogSpace
FROM sys.database_files
WHERE type_desc = 'LOG'
)
-----------------------------
RAISERROR ('Iniciando compacta��o do arquivo NFe.mdf.',0,1) WITH NOWAIT 
PRINT N''+RTRIM(CAST(GETDATE() AS NVARCHAR(30))) 
DBCC SHRINKFILE (@DBNAME , TRUNCATEONLY)
RAISERROR ('Compacta��o realizada no arquivo NFe.mdf.',0,1) WITH NOWAIT 
PRINT N''+RTRIM(CAST(GETDATE() AS NVARCHAR(30))) 

RAISERROR ('Iniciando compacta��o do arquivo NFe.ldf.',0,1) WITH NOWAIT 
PRINT N''+RTRIM(CAST(GETDATE() AS NVARCHAR(30))) 
DBCC SHRINKFILE (@LOGNAME , TRUNCATEONLY)
RAISERROR ('Compacta��o realizada no arquivo NFe.ldf.',0,1) WITH NOWAIT 
PRINT N''+RTRIM(CAST(GETDATE() AS NVARCHAR(30))) 
PRINT N'=================================================='
RAISERROR ('Processo de compacta��o terminado.',0,1) WITH NOWAIT 
PRINT N''+RTRIM(CAST(GETDATE() AS NVARCHAR(30))) 

