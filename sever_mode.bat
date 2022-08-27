@echo off
net start MySQL80
net start MSSQLSERVER
net start Redis
start OSDUtility
taskkill /im uu.exe
taskkill /f /im steam.exe
taskkill /im battle.net.exe

start %1%