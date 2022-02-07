$clientAppName = $1
$serverAppName = $2
function global:dotnet() {
    docker compose run --rm --service-ports --volume ./project/${serverAppName}:/app dotnet-dev dotnet $args
}

function global:yarn() {
    docker compose run --rm --service-ports --volume ./project/${clientAppName}:/app vite-dev yarn $args 
}