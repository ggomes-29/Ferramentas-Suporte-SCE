--BLOCO 3
USE MASTER
GO
EXEC sp_addlinkedserver 
   @server = 'AMFDADOS', 
   @provider = 'Microsoft.Jet.OLEDB.4.0', 
   @srvproduct = 'OLE DB Provider for Jet',
   @datasrc = 'C:\SCE\AutoMagazine\Network\4.1\Database\Amfdados 2000.MDB'
GO
--FIM BLOCO 3