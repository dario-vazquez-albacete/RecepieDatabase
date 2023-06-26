USE RecipeDatabase;
GO
DECLARE @FileName NVARCHAR(255)
SET @FileName = 'C:\temp\RecipeDatabase.bak'
BACKUP DATABASE RecipeDatabase
TO DISK = @FileName
WITH DIFFERENTIAL
GO