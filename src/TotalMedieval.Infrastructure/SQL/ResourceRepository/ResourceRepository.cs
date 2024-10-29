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

        public async Task InsertProvinceResource(string provinceName, double xCoordinate, double yCoordinate)
        {
            using IDbConnection db = new SqlConnection(_connectionString);

            var sqlQuery = "add_province_resource";

            var parameters = new
            {
                ProvinceName = provinceName,
                Resourceid = 1,
                XCoordinate = xCoordinate,
                YCoordinate = yCoordinate
            };

            // Execute the stored procedure
            await db.ExecuteAsync(sqlQuery, parameters, commandType: CommandType.StoredProcedure);
        }
    }
}
