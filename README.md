# CallSync
Android app to record and sync all call details and call recording to a central server using mssql and ftp 


This App requires a mssql database on a local or over the web server 
All the scripts to run on the mssql database is included in the scripts.sql
The directory of the recorded files in the phone needs to be selectd in the android app 
Automatic matching of recorded calls with call details for samsung mobiles with oneui
This app contains background services which get triggered whenever a call is recieved or made or rejected and gets synced to the server automatically if connected
Suggested removing this app from power optimization for proper performance
Support for adding company name of the contact added in the database
App also provides a list of all the calls made from a specific phone can other connected phones can also be viewed from the same phone

# Features
1. Runs in background to sync all the call
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Genral_notofication.jpg" width="300">  <img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Notification_while_sync.jpg" width="300">

2. If not connected to server, App automatically stores the details in sqlite database and backs it up to main server when connected
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Genral_notofication.jpg" width="300">

3. Provides a full Listview of all the calls and person can view others call details who are registered to the same company
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Main_app_view.jpg" width="300">       <img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Main_app_view2.jpg" width="300">

4. Provides countinous alert notification when the phone is not connected to the main server
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Notification_notconnectedtoftp.jpg" width="300"> 

5. Show the last sync time in the notification panel
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Genral_notofication.jpg" width="300">

6. Contains provision for adding company name for a specific phone number
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Main_app_companyselectionlistview.jpg" width="300">

7. Contains flexible settings for different dbnames and password and also for over the web server
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Main_app_databasesettingsview.jpg" width="300">

8. In app playback of recorded calls directily from the ftp server
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Main_app_recordingplaybackview.jpg" width="300">

9. Search bar on top to search through all the call history for caller name or company name
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Main_app_searchview.jpg" width="300">

10. Dialog to show all the details about the caller
<img src="https://github.com/duadhruv/CallSync/blob/master/HexCallSync%20Screenshots/Main_app_calldetails_dialog2.jpg" width="300">





