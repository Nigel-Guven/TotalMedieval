using System.Data;
using System.Data.SqlClient;
using Dapper;

namespace TotalMedieval.Infrastructure.SQL.ResourceRepository
{
    public class ResourceRepository : IResourceRepository
    {
        private readonly string _connectionString;

        public ResourceRepository(string connectionString)
        {
            _connectionString = connectionString;
        }

        public async Task InsertProvinceResource(int provinceId, int resourceId, int xCoordinate, int yCoordinate)
        {
            using IDbConnection db = new SqlConnection(_connectionString);

            var sqlQuery = "[dbo].[add_province_resource]";

            var parameters = new
            {
                province_id = provinceId,
                resource_id = resourceId,
                x = xCoordinate,
                y = yCoordinate
            };

            // Execute the stored procedure
            await db.ExecuteAsync(sqlQuery, parameters, commandType: CommandType.StoredProcedure);
        }
    }
}
