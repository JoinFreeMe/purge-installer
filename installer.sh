#!/bin/bash

#'||'''|,              '||'''|,              |'''''/#
# ||   ||               ||   ||  ''              // #
# ||;;;;   '||  ||`     ||...|'  ||  '||''|,    //  #
# ||   ||   `|..||      || \\    ||   ||  ||   //   #
#.||...|'       ||     .||  \\. .||.  ||..|' /.....|#
#            ,  |'                    ||            #
#             ''     IG: SBMD_RipZ   .||            #
#####################################################
#
############################################################
# ______          __                             ###########
#/\__  _\        /\ \                               ########
#\/_/\ \/        \_\ \    ___                          #####
#   \ \ \        /'_` \  / __`\                       ######
#    \_\ \__    /\ \L\ \/\ \L\ \                    ########
#    /\_____\   \ \___,_\ \____/                           #
#    \/_____/    \/__,_ /\/___/                            #
#                                                          #
#                                                          #
# ____                     ___                 __          #
#/\  _`\                  /\_ \    __         /\ \         #
#\ \ \L\_\    ___      __ \//\ \  /\_\    ____\ \ \___     #
# \ \  _\L  /' _ `\  /'_ `\ \ \ \ \/\ \  /',__\\ \  _ `\   #
#  \ \ \L\ \/\ \/\ \/\ \L\ \ \_\ \_\ \ \/\__, `\\ \ \ \ \  #
#   \ \____/\ \_\ \_\ \____ \/\____\\ \_\/\____/ \ \_\ \_\ #
#    \/___/  \/_/\/_/\/___L\ \/____/ \/_/\/___/   \/_/\/_/ #
#                      /\____/                             #
#                      \_/__/                              #
############################################################


#Be sure to enable FTP in DL settings and launch Aurora as FTP 
#does not seem to work natively through DL
Server="192.168.100.13"
FTPuser="xbox"
FTPpass="xbox"
Directory="/Hdd1/"
Update="http://deceptionlive.com/GTAVThePurge.xex"
Purge="GTAVThePurge.xex"

echo "Current FTP user = ${FTPuser} , \n Current FTP pass = ${FTPpass} , \n Current download link = ${Update}"

wget $Update --no-check
for file in $Purge
do
	echo "${Purge} Download Successful"
done >> Purge.log
ftp -inv $Server <<FINISHED
# -n option disables auto-logon
quote USER $FTPuser 
quote PASS $FTPpass
cd $Directory
delete $Purge
put $Purge
FINISHED
exit 0
