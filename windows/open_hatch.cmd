REM Make sure to change 192.168.4.1 to the IP you'll be connecting from
REM Comments will need to be removed to render this on the box (size requirement)

REM Start the Windows time service and sync it with time.dfw1.rackspace.com
net start w32time
w32tm /config /manualpeerlist:"time.dfw2.rackspace.com time.dfw1.rackspace.com" /syncfromflags:manual /reliable:yes /update
w32tm /resync

REM Allow connections from 192.168.4.1 on the winrm port
netsh advfirewall firewall set rule group="remote administration" new enable=yes & netsh advfirewall firewall add rule name="WinRM Port" dir=in action=allow protocol=TCP remoteip=192.168.4.1 localport=5985

REM Add controller to the hosts file (set controller to your hostname)
echo 192.168.4.1 controller.dfw >> C:\Windows\system32\drivers\etc\hosts
