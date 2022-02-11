function dn() {
    docker compose run --rm --service-ports --volume ${pwd}:/app dotnet-dev $1
}

function vt() {
    docker compose run --rm --service-ports --volume ${pwd}:/app vite-dev $1
}

function dotnet() {
    docker compose run --rm --service-ports --volume ${pwd}:/app dotnet-dev dotnet $1
}

function dotnet-aspnet-codegenerator() {
    docker compose run --rm --volume ${pwd}:/app dotnet-dev dotnet-aspnet-codegenerator $1
}

function yarn() {
    docker compose run --rm --service-ports --volume ${pwd}:/app vite-dev yarn $1
}

function npx() {
    docker compose run --rm --volume ${pwd}:/app vite-dev npx $1
}