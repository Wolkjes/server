# Server Config

With this repository you can easily run our entire project on a server.


If you want to edit the backend or frontend locally, then you will also need this repository to have a working website.


## First start

Clone this repository onto a server or it can also be run locally on your own computer. 
Then go to the root of the project and run:
```
docker-compose up -d
```

# The docker-compose file will run the following instances:

## PostgreSQL database
A PostgreSQL database to keep all the information of the users, campusses, classrooms...

One admin user is already made so that you can easily login.

```
email: admin
password: admin
```
If you run this in production be sure to delete this admin and change it by another with a better password!

## InfluxDB
The InfluxDB is used to keep all the data of the sensors.

## MQTT explorer
The MQTT explorer is needed to connect all the sensors to the InfluxDB and backend. 

## Grafana
Grafana is used to make graphs of a single sensor on the website

## Frontend
An angular frontend is used for the website. You can also run this on your own with this github repository [https://github.com/Wolkjes/frontend] 

## Backend
A node backend is used for the backend. You can also run this on your own with this github repository [https://github.com/Wolkjes/backend] 

<br>
<br>
<br>

## Add sensor

First update your sensor to the latest version: [https://github.com/Wolkjes/operame]

Then connect your sensor to the network and enter the correct IP-address:
<ol>
    <li>Turn the sensor on</li>
    <li>The sensor makes a wifi connection, connect to this with another device</li>
    <li>Then you will get a message to login on this wifi connection, open this and the configuration page will open in the browser</li>
    <li>Select the correct SSID of the password and enter the password of that SSID</li>
    <li>Enter the correct ip-address in the MQTT ip address box. This is the ip where you run all the server files (docker-compose file)</li>
    <li>Go to the bottom of the page and click on Save</li>
    <li>Then restart your sensor by clicking restart at the top of the page</li>
</ol>
