# fabric

### Certificates Generation

```
../bin/cryptogen generate --config crypto-config.yaml --output=crypto-config

```
it will generate crypto-config directory in master branch with all required dependencies of network

### Starting with Genesis Block

```../bin/configtxgen -profile OrdererGenesis -outputBlock ./channel-artifacts/genesis.block

```
### Generating Channel artifacts
```
../bin/configtxgen -profile channelthreeorgs -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID channelthreeorgs
```

### Creating Anchor peer transactions (each command for each organization)

```
../bin/configtxgen -profile channelthreeorgs -outputAnchorPeersUpdate ./channel-artifacts/<peer tx file> -channelID channelthreeorgs -asOrg <org MSP>
```

### Bringing Network Up and Running

```
docker-compose -f docker-compose-cli.yaml up -d
```
