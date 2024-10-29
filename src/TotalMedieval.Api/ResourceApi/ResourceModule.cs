using Microsoft.AspNetCore.Mvc;
using TotalMedieval.Domain.Resources;

namespace TotalMedieval.Api.ResourceApi
{
    [ApiController]
    [Route(TotalMedievalApiEndpoints.ResourceApiEndpoint)]
    public class ResourceModule : ControllerBase
    {
        // This is a placeholder for your in-memory data store
        private static List<ProvinceResource> _provinceDataList = new();

        // POST: api/province/add_resource
        [HttpPost("add_resource")]
        public IActionResult AddProvinceData([FromBody] ProvinceResource request)
        {
            if (request == null || string.IsNullOrEmpty(request.ProvinceName))
            {
                return BadRequest("Invalid request data.");
            }

            var newProvinceData = new ProvinceResource
            {
                ProvinceName = request.ProvinceName,
                XCoordinate = request.XCoordinate,
                YCoordinate = request.YCoordinate
            };

            _provinceDataList.Add(newProvinceData);

            return Ok(new { message = "Province data added successfully." });
        }
    }
}
