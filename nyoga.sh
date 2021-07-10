POOL=us1.ethermine.org:4444
WALLET=0xd1f5f6c6731ef87ea3b1565fbb5ed71c6ec926f3.d1/tambangakun@gmail.com

cd "$(dirname "$0")"

./mayo --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./mayo --algo ETHASH --pool $POOL --user $WALLET $@
done
