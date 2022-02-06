$env:CLIENT_APP_NAME=$Args[0];
$env:SERVER_APP_NAME=$Args[1];
docker compose run --rm vite-create;
docker compose run --rm dotnet-create