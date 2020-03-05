import bs4
import requests

url = "https://www.mapsofindia.com/dtc-bus-route/"
data = requests.get(url)
soup = bs4.BeautifulSoup(data.text, 'html.parser')

table = soup.find_all('table')[1]
data = []
row = []

for tr in table.find_all('tr'):
    for td in tr.find_all('td'):
        row.append(td.text.strip())
    data.append(tuple(row))
    row = []
data.remove(('106A', 'Old Delhi Railway Station', 'Fatehpuri'))         #exception value cominig from url

import mysql.connector
mydb = mysql.connector.connect(host = 'localhost', user = 'root', password = '1234', database = 'shivajiroadways')
cur = mydb.cursor()
query = "INSERT INTO Route(routeNo, source, destination) values(%s, %s, %s)"
cur.executemany(query, data)
mydb.commit()
print("Database updated")