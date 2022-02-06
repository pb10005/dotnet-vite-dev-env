$serverAppName = $1
function global:dotnet() {
 docker compose run --rm --service-ports --volume ./project/BookshelfServer:/app dotnet-dev dotnet $args
}