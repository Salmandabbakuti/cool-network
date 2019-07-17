# Fabric-Network-Generation

Install Required Docker images and tools for development

```
curl -sSL https://goo.gl/6wtTN5 | bash -s 1.3.0
```

```
cd fabric-samples
git clone https://github.com/Salmandabbakuti/Fabric-Network-Generation.git
cd Fabric-Network-Generation
```

### Certificates Generation

>Note that we are not using first-network template, we are creating our personalized network with ```crypto-config.yaml and configtxgen.yaml```. using ```cryptogen, configtxgen``` tools, we are creating certificates and genesis blocks,channels.

```
../bin/cryptogen generate --config crypto-config.yaml --output=crypto-config

```
it will generate crypto-config directory in master branch with all required dependencies of network

### Starting with Genesis Block

```
../bin/configtxgen -profile OrdererGenesis -outputBlock ./channel-artifacts/genesis.block

```
### Generating Channel artifacts
```
../bin/configtxgen -profile channelthreeorgs -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID channelthreeorgs
```

### Creating Anchor peer transactions (each command for each organization)

```
../bin/configtxgen -profile channelthreeorgs -outputAnchorPeersUpdate ./channel-artifacts/<peer tx file> -channelID channelthreeorgs -asOrg <org ID>

EX: "../bin/configtxgen -profile channelthreeorgs -outputAnchorPeersUpdate ./channel-artifacts/MicrosoftAnchor.tx -channelID channelthreeorgs -asOrg MicrosoftMSP"
```

### Bringing Network Up and Running

```
docker-compose -f docker-compose-cli.yaml up -d
```

### Chaincode Installation and Instantiation

