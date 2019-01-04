#take CDROM offline
set-itemproperty -Path HKLM:\System\CurrentControlSet\services\cdrom -Name Start -Value 4 -Force 

Restart-Computer   -Force
