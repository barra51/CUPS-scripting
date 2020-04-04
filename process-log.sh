#!/bin/bash

# Created by Miguel Angel <miguel51atlas@gmail.com>
# Takes a log from CUPS report. Cat useful information ;) 

#      _____ _    _ _____   _____ 
#     / ____| |  | |  __ \ / ____|
#    | |    | |  | | |__) | (___  
#    | |    | |  | |  ___/ \___ \ 
#    | |____| |__| | |     ____) |
#     \_____|\____/|_|    |_____/ 

for i in `cat printername.log`; do grep -i $i /etc/cups/printers.conf; done | grep -i DeviceURI | awk -F '[:/=_-]' '{ print "Server/optio: " $11 " Print Queue name:" $12 }' | column -t
