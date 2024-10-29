CREATE PROCEDURE [dbo].[add_province_resource]
    @province_id INT,
    @resource_id INT,
    @x INT,
    @y INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Check if the province exists
        IF NOT EXISTS (SELECT 1 FROM [dbo].[Provinces] WHERE province_id = @province_id)
        BEGIN
            RAISERROR('Province ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Check if the resource exists
        IF NOT EXISTS (SELECT 1 FROM [dbo].[Resources] WHERE resource_id = @resource_id)
        BEGIN
            RAISERROR('Resource ID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Insert the record if both IDs exist
        INSERT INTO [dbo].[ProvinceResources] (province_id, resource_id, x, y)
        VALUES (@province_id, @resource_id, @x, @y);

        COMMIT TRANSACTION;

        SELECT 'Resource inserted successfully.' AS Message;
    END TRY
    BEGIN CATCH
        -- Error handling and rollback
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

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
