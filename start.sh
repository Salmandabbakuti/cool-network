echo 'Starting Network..'

sudo docker-compose -f docker-compose-cli.yaml down

sudo docker volume prune

sudo docker network prune

sleep 3

sudo docker-compose -f docker-compose-cli.yaml up -d

echo 'Network Booting up.. Should take 10 seconds'
sleep 10

echo 'Channel Creation Taking Place..'

sudo docker exec -it peer0.microsoft.cool-network.com peer channel create -o orderer.cool-network.com:7050 /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/cool-network.com/orderers/orderer.cool-network.com/msp/tlscacerts/tlsca.cool-network.com-cert.pem -c mychannel -f ./channel-artifacts/channel.tx

sleep 2
sudo docker exec -it peer0.microsoft.cool-network.com peer channel join -b mychannel.block

echo 'Exporting channel block to other Peer Containers..'

sudo docker cp cli:/opt/gopath/src/github.com/hyperledger/fabric/peer/mychannel.block .

sudo docker cp mychannel.block peer1.microsoft.cool-network.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/mychannel.block
sudo docker cp mychannel.block peer2.microsoft.cool-network.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/mychannel.block
sudo docker cp mychannel.block peer0.apple.cool-network.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/mychannel.block
sudo docker cp mychannel.block peer1.apple.cool-network.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/mychannel.block
sudo docker cp mychannel.block peer2.apple.cool-network.com:/opt/gopath/src/github.com/hyperledger/fabric/peer/mychannel.block
sleep 5
echo 'Joining Peers..'
sudo docker exec -it peer1.microsoft.cool-network.com peer channel join -b mychannel.block
sudo docker exec -it peer2.microsoft.cool-network.com peer channel join -b mychannel.block
sudo docker exec -it peer0.apple.cool-network.com peer channel join -b mychannel.block
sudo docker exec -it peer1.apple.cool-network.com peer channel join -b mychannel.block
sudo docker exec -it peer2.apple.cool-network.com peer channel join -b mychannel.block

sudo rm mychannel.block

echo 'All Peers Joined Channel..'
exit 1
