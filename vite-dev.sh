CLIENT_APP_NAME=$1 docker compose run --rm --service-ports vite-dev yarn
CLIENT_APP_NAME=$1 docker compose run --rm --service-ports vite-dev yarn dev --host 0.0.0.0 -d