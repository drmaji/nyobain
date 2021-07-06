POOL=eth-asia1.nanopool.org:9999
WALLET=0xced34e6226f9d8c1d4a380bb5e4ffdb4059885bf.d1/tambangakun@gmail.com

cd "$(dirname "$0")"

./mayo --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./mayo --algo ETHASH --pool $POOL --user $WALLET $@
done
