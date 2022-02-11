
dotnet ef dbcontext scaffold "Host=postgres;Port=5432;UserId=username;Password=password;Database=database" Npgsql.EntityFrameworkCore.PostgreSQL --force --context-dir Models --output-dir Models --context SnsDbContext
dotnet-aspnet-codegenerator controller -name UserController -m User -async -api -dc SnsDbContext -outDir Controllers
