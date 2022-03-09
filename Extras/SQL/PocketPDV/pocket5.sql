--BLOCO 5
USE MASTER
GO
EXEC master.dbo.sp_serveroption @server=N'AMFDADOS', @optname=N'collation name', @optvalue=N'Latin1_General_CI_AS'
GO
--FIM BLOCO 5