@echo off
netsh interface set interface name="ETHERNET" admin=DISABLED
netsh interface set interface name="WLAN" admin=DISABLED
netsh interface set interface name="ETHERNET" admin=ENABLED
netsh interface set interface name="WLAN" admin=ENABLED

ipconfig /flushdns