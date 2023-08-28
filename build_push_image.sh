# membuat Docker image dari Dockerfile yang ada pada root directory dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# melihat daftar image di lokal
docker image ls