-- Do a FULL BACKUP of a database
USE RecipeDatabase;
GO
-- Declare a new variable with the name of the backup file
DECLARE @FileName NVARCHAR(255)
SET @FileName = 'C:\temp\RecipeDatabase.bak'
-- Select the database to backup
BACKUP DATABASE RecipeDatabase
-- Specify backup on disk 
TO DISK = @FileName
-- INIT overwrites the previous database bak file NO INIT appends it
WITH INIT
GO