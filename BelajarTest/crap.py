import requests
symbol = "mtgoxUSD"
url = 'http://api.bitcoincharts.com/v1/trades.csv?symbol={}'.format(symbol)
data = requests.get(url)
with open("trades_{}.csv".format(symbol), "r+") as f:
    f.write(data.text)
