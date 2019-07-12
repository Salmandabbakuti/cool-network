## Generating Certificates and Genesis block
```
./fabric-samples/bin/cryptogen generate --config=./crypto-config.yaml

./fabric-samples/bin/configtxgen -profile OrdererGenesis -outputBlock ./channel-artifacts/genesis.block
```
### Channel Transaction Blocks Creation

```
export CHANNEL_ONE_NAME=channelall
export CHANNEL_ONE_PROFILE=ChannelAll
export CHANNEL_TWO_NAME=channel12
export CHANNEL_TWO_PROFILE=Channel12
```

```
./fabric-samples/bin/configtxgen -profile ${CHANNEL_ONE_PROFILE} -outputCreateChannelTx ./channel-artifacts/${CHANNEL_ONE_NAME}.tx -channelID $CHANNEL_ONE_NAME

./fabric-samples/bin/configtxgen -profile ${CHANNEL_TWO_PROFILE} -outputCreateChannelTx ./channel-artifacts/${CHANNEL_TWO_NAME}.tx -channelID $CHANNEL_TWO_NAME
```

## Generating Anchor peer transactions 

#### For ChannelAll

```
./fabric-samples/bin/configtxgen -profile ${CHANNEL_ONE_PROFILE} -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors_${CHANNEL_ONE_NAME}.tx -channelID $CHANNEL_ONE_NAME -asOrg Org1MSP

./fabric-samples/bin/configtxgen -profile ${CHANNEL_ONE_PROFILE} -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors_${CHANNEL_ONE_NAME}.tx -channelID $CHANNEL_ONE_NAME -asOrg Org2MSP

./fabric-samples/bin/configtxgen -profile ${CHANNEL_ONE_PROFILE} -outputAnchorPeersUpdate ./channel-artifacts/Org3MSPanchors_${CHANNEL_ONE_NAME}.tx -channelID $CHANNEL_ONE_NAME -asOrg Org3MSP
```
#### For Channel12

```
./fabric-samples/bin/configtxgen -profile ${CHANNEL_TWO_PROFILE} -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors_${CHANNEL_TWO_NAME}.tx -channelID $CHANNEL_TWO_NAME -asOrg Org1MSP

./fabric-samples/bin/configtxgen -profile ${CHANNEL_TWO_PROFILE} -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors_${CHANNEL_TWO_NAME}.tx -channelID $CHANNEL_TWO_NAME -asOrg Org2MSP
```

### Bring up Network

```
docker-compose -f docker-compose.yaml up -d
```