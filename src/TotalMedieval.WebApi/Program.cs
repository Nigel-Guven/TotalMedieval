using Microsoft.AspNetCore.Authentication.Negotiate;
using TotalMedieval.Api.ResourceApi;
using TotalMedieval.Application.Resources;
using TotalMedieval.Infrastructure.SQL.ResourceRepository;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers()
    .AddApplicationPart(typeof(ResourceModule).Assembly);
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddScoped<IResourceRepository>(provider =>
{
    var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
    return new ResourceRepository(connectionString);
});
builder.Services.AddScoped<IResourceService, ResourceService>();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddAuthentication(NegotiateDefaults.AuthenticationScheme)
    .AddNegotiate();

builder.Services.AddAuthorization(options =>
{
    options.FallbackPolicy = options.DefaultPolicy;
});

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();
app.UseAuthentication();
app.UseAuthorization();
app.MapControllers();

app.Run();