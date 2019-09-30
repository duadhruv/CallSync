# CallSync
Android app to record and sync all call details and call recording to a central server using mssql and ftp 


#This App requires a mssql database on a local or over the web server 
#All the scripts to run on the mssql database is included in the scripts.sql
#The directory of the recorded files in the phone needs to be selectd in the android app 
#Automatic matching of recorded calls with call details for samsung mobiles with oneui
#This app contains background services which get triggered whenever a call is recieved or made or rejected and gets synced to the server automatically if connected
#Suggested removing this app from power optimization for proper performance
#Support for adding company name of the contact added in the database
#App also provides a list of all the calls made from a specific phone can other connected phones can also be viewed from the same phone

