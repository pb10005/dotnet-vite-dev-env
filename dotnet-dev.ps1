$serverAppName = $Args[0]
docker compose -f .\docker-compose-dev.yml run --rm --service-ports --volume ./project/${serverAppName}:/app dotnet-dev dotnet run
