function dn() {
    docker compose run --rm -v $(pwd):/app dotnet-dev $@
}

function vt() {
    docker compose run --rm -v $(pwd):/app vite-dev $@
}

function dotnet() {
    docker compose run --rm -v $(pwd):/app dotnet-dev dotnet $@
}

function yarn() {
    docker compose run --rm -v $(pwd):/app vite-dev yarn $@
}

function npx() {
    docker compose run --rm -v $(pwd):/app vite-dev npx $@
}