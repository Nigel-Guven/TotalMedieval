namespace TotalMedieval.Infrastructure.SQL.ResourceRepository
{
    public interface IResourceRepository
    {
        Task InsertProvinceResource(int provinceId, int resourceId, int xCoordinate, int yCoordinate);
    }
}
