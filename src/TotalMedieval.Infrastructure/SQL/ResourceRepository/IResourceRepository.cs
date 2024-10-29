namespace TotalMedieval.Infrastructure.SQL.ResourceRepository
{
    public interface IResourceRepository
    {
        Task InsertProvinceResource(string provinceName, double xCoordinate, double yCoordinate);
    }
}
