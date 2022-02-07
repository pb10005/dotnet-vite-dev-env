$clientAppName = Read-Host "Vite app name"
$serverAppName = Read-Host "dotnet app name"

docker compose up -d redis postgres

$env:CLIENT_APP_NAME=${clientAppName};
$env:SERVER_APP_NAME=${serverAppName};
docker compose run --rm vite-create;
docker compose run --rm dotnet-create

docker compose build

./set-alias.ps1 $clientAppName $serverAppName

dotnet add package Microsoft.EntityFrameworkCore
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL
dotnet add package Microsoft.Extensions.Caching.StackExchangeRedis

dotnet ef dbcontext scaffold "Host=postgres;Port=5432;UserId=username;Password=password;Database=database" Npgsql.EntityFrameworkCore.PostgreSQL --force --context-dir Models --output-dir Models --context SnsDbContext