using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace TotalMedieval.Domain.Resources
{
    public class ProvinceResourceCommand
    {
        [JsonPropertyName("province_name")]
        [Required]
        public string? ProvinceName { get; set; } = string.Empty;

        [JsonPropertyName("x_coordinate")]
        [Required]
        public int XCoordinate { get; set; }

        [JsonPropertyName("y_coordinate")]
        [Required]
        public int YCoordinate { get; set; }
    }
}
