CREATE PROCEDURE InsertProvinceResource
    @province_id INT,
    @resource_id INT,
    @x INT,
    @y INT
AS
BEGIN

    BEGIN TRY

        INSERT INTO [dbo].[ProvinceResources] (province_id, resource_id, x, y)
        VALUES (@province_id, @resource_id, @x, @y);


        SELECT 'Resource inserted successfully.' AS Message;
    END TRY
    BEGIN CATCH

        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END;
