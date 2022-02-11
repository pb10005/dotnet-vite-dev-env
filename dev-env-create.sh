
echo "Vite app name:"
CLIENT_APP_NAME=$1
echo "dotnet app name"
SERVER_APP_NAME=$2

docker compose build
docker compose up -d redis postgres

./set-alias.sh

mkdir project
cd ./project
npx degit web2033/vite-vue3-tailwind-starter ${clientAppName}
dotnet new webapi -n $SERVER_APP_NAME

cd ./$SERVER_APP_NAME
dotnet add package Microsoft.EntityFrameworkCore --version 6.0.2
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL
dotnet add package Microsoft.Extensions.Caching.StackExchangeRedis
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration --version 6
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design --version 6

dotnet ef dbcontext scaffold "Host=postgres;Port=5432;UserId=username;Password=password;Database=database" Npgsql.EntityFrameworkCore.PostgreSQL --force --context-dir Models --output-dir Models --context SnsDbContext
dotnet aspnet-codegenerator controller -name UserController -m User -async -api -dc SnsDbContext -outDir Controllers
cd ../..
