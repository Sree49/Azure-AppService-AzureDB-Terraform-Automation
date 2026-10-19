App deployment on Azure App Service and Azure DB - Automation.

Deployed RG, VNET, App service, App service plan, Azure DB server, Azure DB using terraform. \
<img src="./images/RG.png" alt="RG" width="400">

Azure-Pipelines.yaml file: \
Test, Prod environments. \
Provision infrastructure using terraform. \
SQL script for database automation. \
Deploy app to Test slot. \
<img src="./images/Webapp-Code.png" alt="Webapp-Code" width="400"> \
Add approval in Prod environment. \
Deploy app to Prod slot once approved. 



<img src="./images/Webapp-Env.png" alt="Webapp-Env" width="400">

<img src="./images/Webapp-Slot.png" alt="Webapp-Slot" width="400">

App:  \
<img src="./images/app1.png" alt="App" width="400">

Added new data in database. result:

<img src="./images/app2.png" alt="App" width="400">



