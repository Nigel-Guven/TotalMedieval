using TotalMedieval.Domain.Resources;
using TotalMedieval.Infrastructure.SQL.ResourceRepository;

namespace TotalMedieval.Application.Resources
{
    public class ResourceService : IResourceService
    {
        private IResourceRepository _resourceRepository;

        public ResourceService(IResourceRepository resourceRepository )
        {
            _resourceRepository = resourceRepository;
        }

        public async Task AddProvinceResource(ProvinceResourceCommand provinceResourceCommand)
        {
            ProvinceResource provinceResource = 
                new(provinceResourceCommand.ProvinceId, provinceResourceCommand.ResourceId, provinceResourceCommand.XCoordinate, provinceResourceCommand.YCoordinate);

            await _resourceRepository.InsertProvinceResource(provinceResource.ProvinceId, provinceResource.ResourceId, provinceResource.XCoordinate, provinceResource.YCoordinate);
        }
    }
}
