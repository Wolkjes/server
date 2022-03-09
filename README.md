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

## Frontend
An angular frontend is used for the website. You can also run this on your own with this github repository [https://github.com/Wolkjes/frontend] 

## Backend
A node backend is used for the backend. You can also run this on your own with this github repository [https://github.com/Wolkjes/backend] 
#
## Add sensor

To add a new sensor to the webiste you need to clone this repository and follow the instructions to flash your own sensor [https://github.com/Wolkjes/operame]