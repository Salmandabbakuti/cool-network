## Environment Variables for Switching CLI Container


>Should be be run from CLI Container ```docker exec -it cli bash```

```
### Microsoft Peer0

export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/users/Admin@microsoft.cool-network.com/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/peers/peer0.microsoft.cool-network.com/tls/ca.crt 
export CORE_PEER_ADDRESS=peer0.microsoft.cool-network.com:7051
export CORE_PEER_LOCALMSPID=MicrosoftMSP" cli

### Microsoft Peer1

export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/users/Admin@microsoft.cool-network.com/msp 
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/peers/peer1.microsoft.cool-network.com/tls/ca.crt 
export CORE_PEER_ADDRESS=peer1.microsoft.cool-network.com:7051
export CORE_PEER_LOCALMSPID=MicrosoftMSP

### Microsoft Peer2

export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/users/Admin@microsoft.cool-network.com/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/peers/peer2.microsoft.cool-network.com/tls/ca.crt 
export CORE_PEER_ADDRESS=peer2.microsoft.cool-network.com:7051
export CORE_PEER_LOCALMSPID=MicrosoftMSP

### Apple Peer0

export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/users/Admin@apple.cool-network.com/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/peers/peer0.apple.cool-network.com/tls/ca.crt 
export CORE_PEER_ADDRESS=peer0.apple.cool-network.com:7051
export CORE_PEER_LOCALMSPID=AppleMSP

### Apple Peer1

export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/users/Admin@apple.cool-network.com/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/peers/peer1.apple.cool-network.com/tls/ca.crt 
export CORE_PEER_ADDRESS=peer1.apple.cool-network.com:7051
export CORE_PEER_LOCALMSPID=AppleMSP

### Apple Peer2

export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/users/Admin@apple.cool-network.com/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/peers/peer2.apple.cool-network.com/tls/ca.crt 
export CORE_PEER_ADDRESS=peer2.apple.cool-network.com:7051
export CORE_PEER_LOCALMSPID=AppleMSP


```
