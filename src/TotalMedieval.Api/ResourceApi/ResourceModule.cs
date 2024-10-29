using Microsoft.AspNetCore.Mvc;
using TotalMedieval.Application.Resources;
using TotalMedieval.Domain.Resources;

namespace TotalMedieval.Api.ResourceApi
{
    [ApiController]
    [Route(TotalMedievalApiEndpoints.ResourceApiEndpoint)]
    public class ResourceModule : ControllerBase
    {
        IResourceService _resourceService;

        public ResourceModule(IResourceService resourceService)
        { 
            _resourceService = resourceService; 
        } 

        [HttpPost("add_resource")]
        public IActionResult AddProvinceData([FromBody] ProvinceResourceCommand request)
        {
            if (request == null)
            {
                return BadRequest("Invalid request data.");
            }

            _resourceService.AddProvinceResource(request);

            return Ok(new { message = "Province data added successfully." });
        }
    }
}
