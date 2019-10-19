echo 'Starting Network..'

sudo docker-compose -f docker-compose-cli.yaml down

sudo docker volume prune

sudo docker network prune

sleep 3

sudo docker-compose -f docker-compose-cli.yaml up -d

echo 'Channel Creation Taking Place..'

sudo docker exec -it cli peer channel create -o orderer.cool-network.com:7050 /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/cool-network.com/orderers/orderer.cool-network.com/msp/tlscacerts/tlsca.cool-network.com-cert.pem -c mychannel -f ./channel-artifacts/channel.tx

sleep 2
sudo docker exec -it cli peer channel join -b mychannel.block
exit 1
