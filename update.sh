
docker container stop elixir
echo "Stopped container..."

docker container rm elixir
echo "Deleted container..."
docker pull elixirprotocol/validator:v3 --platform linux/amd64

docker run -d --env-file /root/elixir/validator.env --name elixir --platform linux/amd64 -p 17690:17690 elixirprotocol/validator:v3
