net start VMnetDHCP
net start VMUSBArbService
net start VMwareHostd
net start "VMware NAT Service"
net start "VMware Authorization Service"
netsh interface set interface name="VMware Network Adapter VMnet0" admin=ENABLED
start VMware