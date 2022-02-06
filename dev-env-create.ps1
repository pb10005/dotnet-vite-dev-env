$env:CLIENT_APP_NAME=$Args[0];
$env:SERVER_APP_NAME=$Args[1];
docker compose -f .\docker-compose-create.yml run --rm vite-create;
docker compose -f .\docker-compose-create.yml run --rm dotnet-create