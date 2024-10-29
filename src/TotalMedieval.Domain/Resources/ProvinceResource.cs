namespace TotalMedieval.Domain.Resources
{
    public class ProvinceResource
    {
        public int ProvinceId { get; set; }

        public int ResourceId { get; set; }

        public int XCoordinate { get; set; }

        public int YCoordinate { get; set; }

        public ProvinceResource (int provinceName, int resourceId, int xCoordinate, int yCoordinate)
        {
            ProvinceId = provinceName;
            ResourceId = resourceId;
            XCoordinate = xCoordinate;
            YCoordinate = yCoordinate;
        }
    }
}
