$serverAppName = $Args[0]
docker compose run --rm --service-ports --volume ./project/${serverAppName}:/app dotnet-dev dotnet run
