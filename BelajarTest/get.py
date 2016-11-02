import urrlib
import re

urls = ["http://google.com","http://youtube,com","http://facebook.com"]
i=0
regex = '<tittle>(.+?)</tittle>'
pattern = re.compile(regex)

while i<len(urls):
	htmlfile = urllib.urlopen(urls[i])
	htmltext = htmlfile.read()
	tittles = re.findall(pattern,htmltext)
	print
	i+=1
