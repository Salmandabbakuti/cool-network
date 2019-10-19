echo "A0=Apple peer0"
echo " "
echo "A1=Apple peer1"
echo " "
echo "A2=Apple peer2"
echo " "

echo "M0=Microsoft peer0"
echo " "
echo "M1=Microsoft peer1"
echo " "
echo "M2=Microsoft peer2"
echo " "
echo "Which peer You wanted To Switch CLI Container??"
read input
if [[ $input == "M1"]]; then
        echo "Setting Up CLI for Microsoft Peer1"

sudo docker exec -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/users/Admin@microsoft.cool-network.com/msp" -e "CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/peers/peer1.microsoft.cool-network.com/tls/ca.crt" -e "CORE_PEER_ADDRESS=peer1.microsoft.cool-network.com:7051" -e "CORE_PEER_LOCALMSPID=MicrosoftMSP" cli
if [[ $input == "M2"]]; then
 
       echo "Setting Up CLI for Microsoft Peer2"
sudo docker exec -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/users/Admin@microsoft.cool-network.com/msp" -e "CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/peers/peer2.microsoft.cool-network.com/tls/ca.crt" -e "CORE_PEER_ADDRESS=peer2.microsoft.cool-network.com:7051" -e "CORE_PEER_LOCALMSPID=MicrosoftMSP" cli


if [[ $input == "A0"]]; then
        echo "Setting Up CLI for Apple Peer0"
sudo docker exec -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/users/Admin@apple.cool-network.com/msp" -e "CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/peers/peer0.apple.cool-network.com/tls/ca.crt" -e "CORE_PEER_ADDRESS=peer0.apple.cool-network.com:7051" -e "CORE_PEER_LOCALMSPID=AppleMSP" cli

if [[ $input == "A1"]]; then
        echo "Setting Up CLI for Apple Peer1"
sudo docker exec -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/users/Admin@apple.cool-network.com/msp" -e "CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/peers/peer1.apple.cool-network.com/tls/ca.crt" -e "CORE_PEER_ADDRESS=peer1.apple.cool-network.com:7051" -e "CORE_PEER_LOCALMSPID=AppleMSP" cli

if [[ $input == "A2"]]; then
        echo "Setting Up CLI for Apple Peer2"

sudo docker exec -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/users/Admin@apple.cool-network.com/msp" -e "CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/apple.cool-network.com/peers/peer2.apple.cool-network.com/tls/ca.crt" -e "CORE_PEER_ADDRESS=peer2.apple.cool-network.com:7051" -e "CORE_PEER_LOCALMSPID=AppleMSP" cli


if [[ $input == "M0"]]; then
        echo "Setting Up CLI for Microsoft Peer0"
 
sudo docker exec -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/users/Admin@microsoft.cool-network.com/msp" -e "CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/microsoft.cool-network.com/peers/peer0.microsoft.cool-network.com/tls/ca.crt" -e """CORE_PEER_ADDRESS=peer0.microsoft.cool-network.com:7051" -e "CORE_PEER_LOCALMSPID=MicrosoftMSP" cli


else
        echo "Sorry I don't Understand. Choose Right one from Options.."



fi
