using TotalMedieval.Domain.Resources;

namespace TotalMedieval.Application.Resources
{
    public interface IResourceService
    {
        Task AddProvinceResource(ProvinceResourceCommand provinceResource);
    }
}
