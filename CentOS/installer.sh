#--------------------------------------------------
#SoftEther Auto Install Script
#Fedora
#Created May 25, 2018
#Latest SoftEther Server Version for May 2018
#Coded by Jayson Velagio
#Modified by Eildriz
#Open Source Project From https://www.softether.org/
#From University of Tsukuba, Japan
#--------------------------------------------------
#Login with root permission or execute #sudo su
#Script Start
#--------------------------------------------------
#Updating Version
cd /root
yum update -y
yum groupinstall "development tools" -y
#Downloading server files
yum install wget -y
wget http://www.softether-download.com/files/softether/v4.27-9666-beta-2018.04.21-tree/Linux/SoftEther_VPN_Server/64bit_-_Intel_x64_or_AMD64/softether-vpnserver-v4.27-9666-beta-2018.04.21-linux-x64-64bit.tar.gz
tar zxf softether-vpnserver-v4.27-9666-beta-2018.04.21-linux-x64-64bit.tar.gz
cd vpnserver
clear
echo  -e "\033[31;7mNOTE: ANSWER 1 AND ENTER THREE TIMES FOR THE COMPILATION TO PROCEED\033[0m"
#Installing server files, Manual input
make
cd /root
mv vpnserver /usr/local
rm -rf softether-vpnserver-v4.27-9666-beta-2018.04.21-linux-x64-64bit.tar.gz
cd /usr/local/vpnserver
chmod 600 *
chmod 700 vpncmd
chmod 700 vpnserver
#Installing server command
wget https://raw.githubusercontent.com/Driz12/SoftetherAutoInstallMultiPlatform/master/CentOS/vpn-server.sh --no-check-certificate
mv vpn-server.sh /etc/init.d/vpnserver
cd /etc/init.d/
chmod 755 vpnserver
chkconfig --add vpnserver
/etc/init.d/vpnserver start
cd /usr/local/vpnserver
echo ---------------------------------------------
echo  -e "\033[32;5mVPN SERVER INSTALLED SUCCESSFULLY!\033[0m"
echo "vpncmd is at /usr/local/vpnserver"
echo ---------------Commands----------------------
echo /etc/init.d/vpnserver start - to start
echo /etc/init.d/vpnserver restart - to restart
echo /etc/init.d/vpnserver stop - to stop
echo ---------------------------------------------
#End of script
