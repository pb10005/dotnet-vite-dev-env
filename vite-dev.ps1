$clientAppName = $Args[0]
docker compose -f .\docker-compose-dev.yml run --rm --service-ports --volume ./project/${clientAppName}:/app vite-dev yarn
docker compose -f .\docker-compose-dev.yml run --rm --service-ports --volume ./project/${clientAppName}:/app vite-dev yarn dev --host 0.0.0.0 -d