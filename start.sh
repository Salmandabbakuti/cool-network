echo 'Starting Network..'

sudo docker-compose -f docker-compose-cli.yaml down

sudo docker volume prune

sudo docker network prune

sleep 3

sudo docker-compose -f docker-compose-cli.yaml up -d
