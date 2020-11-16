@echo off
net stop "Intel(R) Driver & Support Assistant"
net stop "Intel(R) Driver & Support Assistant Updater"

net stop ClickToRunSvc
net stop "Connected User Experiences and Telemetry"
net stop SQLWriter
net stop MSSQLFDLauncher
net stop SQLTELEMETRY

net stop MySQL80
net stop MSSQLSERVER

netsh interface set interface name="VMware Network Adapter VMnet0" admin=DISABLED
net stop VMwareHostd
net stop "VMware NAT Service"
net stop "VMware Authorization Service"
net stop VMnetDHCP
net stop VMUSBArbService

taskkill /f /im OSDUtility.exe
taskkill /f /im DSATray.exe

start %1%