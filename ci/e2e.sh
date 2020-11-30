$(npm bin)/ganache-cli --fork https://mainnet.infura.io/v3/$INFURA_KEY --unlock 0xbe0eb53f46cd790cd13851d5eff43d12404d33e8 > /dev/null 2>&1 & sleep 10 && node --max-old-space-size=4096 $(npm bin)/truffle test ./test/e2e/*.ts && kill $(lsof -t -i:8545)
