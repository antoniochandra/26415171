import csv
import operator as op
import requests

symbol = "mtgoxUSD"
url = 'http://api.bitcoincharts.com/v1/trades.csv?symbol={}'.format(symbol)
csv_file = "trades_{}.csv".format(symbol)

data = requests.get(url)
with open(csv_file, "w") as f:
    f.write(data.text)

with open(csv_file) as f:
    next(f) # discard first row from file -- see notes
    max_value = max(row[0] for row in csv.reader(f))

with open(csv_file) as f:
    next(f) # discard first row from file -- see notes
    max_row = max(csv.reader(f), key=op.itemgetter(0))
