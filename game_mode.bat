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
net stop Redis

netsh interface set interface name="VMware Network Adapter VMnet0" admin=DISABLED
net stop VMwareHostd
net stop "VMware NAT Service"
net stop "VMware Authorization Service"
net stop VMnetDHCP
net stop VMUSBArbService

taskkill /f /im OSDUtility.exe
taskkill /f /im DSATray.exe

net stop AdobeUpdateService
taskkill /f /im acrotray.exe
taskkill /f /im adb.exe
taskkill /f /im "Adobe CEF Helper.exe"
taskkill /f /im "Adobe Desktop Service.exe"
taskkill /f /im "Adobe Installer.exe"
taskkill /f /im AdobeIPCBroker.exe
taskkill /f /im AdobeNotificationClient.exe
taskkill /f /im AdobeUpdateService.exe
taskkill /f /im AppleMobileDeviceService.exe
taskkill /f /im CCLibrary.exe
taskkill /f /im CCXProcess.exe
taskkill /f /im CoreSync.exe
taskkill /f /im "Creative Cloud Helper.exe"
taskkill /f /im "iCloudDrive.exe"
taskkill /f /im "iCloudPhotos.exe"
taskkill /f /im "iCloudPrefs.exe"
taskkill /f /im "iCloudServices.exe"

start %1%