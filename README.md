# purge-installer
bash script to install a game menu via FTP for an RGH/JTAG xbox 360

Decided to make this script as the xbdm cannot be utilized from a linux machine , hense forcing users of this menu to manually do update via USB 

# Vars :

$Server : set to the local IP address of the machine
$FTPuser : by default this is set to "xbox"
$FTPpass : by default this is set to "xbox"
$Directory : by default this is set to /Hdd1/
$Update : set to the update url 
$Purge : set to the xex name 


# note :
 
FTP may not work nativly on the console even when set in DashLaunch.
> This can be fixed by launch Aurora


# Process that this lets you skip :

1. GET update
2. FTP to xbox
3. DEL old file
4. PUT new file

