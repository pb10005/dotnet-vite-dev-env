SERVER_APP_NAME=$1 docker compose -f ./docker-compose-dev.yml run --rm --service-ports dotnet-dev dotnet run
