
set image="footest-img:latest"
set container="footest-container"

docker ps -a --no-trunc --filter name=%container% --filter status=exited -q | find "Error" || docker stop %container% && docker rm %container%
docker ps -a --no-trunc --filter name=%container% -q | find "Error" || docker stop %container% && docker rm %container%
docker build -t %image% .

docker create -it --name %container%^
	-v %CD%:/repo:delegated^
	%image%

docker start %container%

docker exec -it %container% /bin/sh
