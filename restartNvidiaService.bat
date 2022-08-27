taskkill /f /im "NVIDIA Web Helper.exe"
net stop NvContainerLocalSystem

net start NvContainerLocalSystem
start "C:\Program Files (x86)\NVIDIA Corporation\NvNode\NVIDIA Web Helper.exe"