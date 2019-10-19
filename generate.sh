rm -rf channel-artifacts
mkdir channel-artifacts
export PATH=${PWD}/bin:${PWD}:$PATH
export FABRIC_CFG_PATH=$PWD
sleep 2

echo 'Generating Certificates and Channel configurations..'

cryptogen generate --config crypto-config.yaml --output=crypto-config
configtxgen -profile OrdererGenesis -outputBlock ./channel-artifacts/genesis.block
configtxgen -profile channelAll -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID publiChannel
sleep 5

echo 'Updating Anchor Peers for Channel..'

configtxgen -profile channelAll -outputAnchorPeersUpdate ./channel-artifacts/MicrosoftAnchor.tx -channelID publicChannel -asOrg MicrosoftMSP
configtxgen -profile channelAll -outputAnchorPeersUpdate ./channel-artifacts/GoogleAnchor.tx -channelID publicChannel -asOrg GoogleMSP

echo 'All Done..'
exit 1
