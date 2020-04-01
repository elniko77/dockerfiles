-- Restoring databases
-- Paises
-- DROP DATABASE IF EXISTS [Paises];
-- CREATE DATABASE [Paises] ON PRIMARY
--        (NAME = N'paises' , FILENAME= N'/var/opt/mssql/data/Paises.mdf'  )
--        LOG ON (NAME= N'paises_log', FILENAME= N'/var/opt/mssql/log/Paises_log.ldf');

RESTORE DATABASE [master] FROM  DISK = N'/var/opt/mssql/backup/master.bak' WITH  
FILE = 1,  MOVE N'master' TO N'/var/opt/mssql/data/master.mdf',  
MOVE N'master_log' TO N'/var/opt/mssl/backup/master_log.ldf',  
REPLACE, NOUNLOAD,  STATS = 2

RESTORE DATABASE [Pagos] FROM  DISK = N'/var/opt/mssql/backup/pagos.bak' WITH  
FILE = 1,  MOVE N'Pagos' TO N'/var/opt/mssql/data/pagos.mdf',  
MOVE N'Pagos_log' TO N'/var/opt/mssl/backup/pagos_log.ldf',  
REPLACE, NOUNLOAD,  STATS = 2

RESTORE DATABASE [Paises] FROM  DISK = N'/var/opt/mssql/backup/paises.bak' WITH  
FILE = 1,  MOVE N'Paises' TO N'/var/opt/mssql/data/paises.mdf',  
MOVE N'Paises_log' TO N'/var/opt/mssl/backup/paises_log.ldf',  
REPLACE, NOUNLOAD,  STATS = 2
