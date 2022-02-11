$clientAppName = Read-Host "Vite app name"
$serverAppName = Read-Host "dotnet app name"

docker compose build
docker compose up -d redis postgres

./set-alias.ps1

mkdir project
cd ./project
npx degit web2033/vite-vue3-tailwind-starter ${clientAppName}
dotnet new webapi -n ${serverAppName}

cd ./${serverAppName} 
dotnet add package Microsoft.EntityFrameworkCore --version 6.0.2
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL
dotnet add package Microsoft.Extensions.Caching.StackExchangeRedis
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration --version 6
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design --version 6

dotnet ef dbcontext scaffold "Host=postgres;Port=5432;UserId=username;Password=password;Database=database" Npgsql.EntityFrameworkCore.PostgreSQL --force --context-dir Models --output-dir Models --context SnsDbContext
dotnet aspnet-codegenerator controller -name UserController -m User -async -api -dc SnsDbContext -outDir Controllers
cd ../..
