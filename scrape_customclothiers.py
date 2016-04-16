# -*- coding: utf-8 -*-
'''
import urllib2
from bs4 import BeautifulSoup
html = urllib2.urlopen( "http://espn.go.com/college-football/standings" ).read()
soup = BeautifulSoup( html )

for row in soup('table', {'class': 'standings has-team-logos'})[0].tbody('tr'):
    tds = row('td')
    print tds[1].string
'''

import lxml.html
import requests
import MySQLdb

page = requests.get('http://econpy.pythonanywhere.com/ex/001.html')
tree = lxml.html.fromstring(page.content)

#This will create a list of buyers:
buyers = tree.xpath('//div[@title="buyer-name"]/text()')
#This will create a list of prices
prices = tree.xpath('//span[@class="item-price"]/text()')

print 'Buyers: ', buyers
print 'Prices: ', prices