import bs4
import requests

url = "https://www.mapsofindia.com/dtc-bus-route/"
data = requests.get(url)
soup = bs4.BeautifulSoup(data.text, 'html.parser')
urls = []
count = 0

import mysql.connector
mydb = mysql.connector.connect(host = 'localhost', user = 'root', password = '1234', database = 'shivajiroadways')
cur = mydb.cursor()

def getURLs():
    global count
    table = soup.find_all('table')[1]
    for tr in table.find_all('tr'):
        a = tr.find_all('td')[0].find('a')
        urls.append((a.text.strip(), a['href']))
        count += 1
    urls.remove(('106A', 'https://www.mapsofindia.com/dtc-bus-route/route-for-106a.html'))   #exception value cominig from url
    urls.remove(('OMS', 'https://www.mapsofindia.com/dtc-bus-route/route-for-oms.html'))     #exception value cominig from url
    print('URL list created\n')

def fetchData(url):
    route = requests.get(url[1])
    soup = bs4.BeautifulSoup(route.text, 'html.parser')

    table = soup.find('table')
    firstTr = True
    for tr in table.find_all('tr'):
        if(firstTr):
            firstTr = False
            continue
        td = tr.find_all('td')
        if(td[0].text.strip() == url[0]):
            actualData = []
            print(td[0].text.strip())
            for span in td[1].find_all('span'):
                serial = span.text.strip().replace('.', "")
                standName =  span.next_sibling.strip()
                actualData.append((serial, url[0] , standName))
                print("\t", serial, standName)
            query = "INSERT INTO RouteStands(standNo, routeNo, standName) values(%s, %s, %s)"
            cur.executemany(query, actualData)
            mydb.commit()
        else:
            continue

getURLs()
for url in urls:
    fetchData(url)

print("\n\aAll the data added\n\n\n\t\t\t\t\t+-------------------+")
print("\t\t\t\t\t| MAHNAT RANG LAAYI |")
print("\t\t\t\t\t+-------------------+\n\n")




