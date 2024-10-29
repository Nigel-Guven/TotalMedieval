using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace TotalMedieval.Domain.Resources
{
    public class ProvinceResourceCommand
    {
        [JsonPropertyName("province_id")]
        [Required]
        public int ProvinceId { get; set; }

        [JsonPropertyName("resource_id")]
        [Required]
        public int ResourceId { get; set; }

        [JsonPropertyName("x_coordinate")]
        [Required]
        public int XCoordinate { get; set; }

        [JsonPropertyName("y_coordinate")]
        [Required]
        public int YCoordinate { get; set; }
    }
}
