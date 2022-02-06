
CLIENT_APP_NAME=$1 docker compose -f ./docker-compose-create.yml run --rm vite-create
SERVER_APP_NAME=$2 docker compose -f ./docker-compose-create.yml run --rm dotnet-create