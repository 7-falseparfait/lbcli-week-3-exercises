# Create a native segwit address and get the public key from the address.
bitcoin-cli -regtest createwallet btrustwallet
ADDR=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" bech32)

# Get the public key from the address
PUBKEY=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getaddressinfo "$ADDR" | jq -r '.pubkey')

echo "Address: $ADDR"
echo "Public Key: $PUBKEY"
