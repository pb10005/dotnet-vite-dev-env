function global:dn() {
    docker compose run --rm --service-ports --volume ${pwd}:/app dotnet-dev $args
}

function global:vt() {
    docker compose run --rm --service-ports --volume ${pwd}:/app vite-dev $args
}

function global:dotnet() {
    docker compose run --rm --service-ports --volume ${pwd}:/app dotnet-dev dotnet $args
}

function global:dotnet-aspnet-codegenerator() {
    docker compose run --rm --volume ${pwd}:/app dotnet-dev dotnet-aspnet-codegenerator $args
}

function global:yarn() {
    docker compose run --rm --service-ports --volume ${pwd}:/app vite-dev yarn $args 
}

function global:npx() {
    docker compose run --rm --volume ${pwd}:/app vite-dev npx $args 
}