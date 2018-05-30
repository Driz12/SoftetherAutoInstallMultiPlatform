# SoftEther Auto Install Multi Platform<br />
* SoftEther Auto Install Script for Multi-Platform<br />
* Updated 5/30/18
* SoftEther VPN Server (Ver 4.27, Build 9668, beta)
* An open source VPN project from University of Tsukuba Japan<br />

<b>Works With</b>
  * CentOS 6 or 7 x64
  * Fedora
  * Debian 8 or 9 x64
  * Ubuntu 14, 15, 16, 17, 18 x64

# Instruction<br />
Choose your desired platform folder<br />
Download installer.sh using wget or transfer to your root directory using ftp<br /><br />
<b>(Copy All The Codes Below And Paste On Your Terminal)</b>

<b>Download and install the installer.sh by executing the commands below</b><br /><br />


<b>For CentOS and Fedora</b> <br /><br />
```yum install wget -y && wget https://raw.githubusercontent.com/Driz12/SoftetherAutoInstallMultiPlatform/master/Fedora/installer.sh && chmod +x installer.sh && ./installer.sh ```<br /><br /><br />


<b>For Debian and Ubuntu</b> <br /><br />
```wget https://raw.githubusercontent.com/Driz12/SoftetherAutoInstallMultiPlatform/master/Debian%20and%20Ubuntu/installer.sh && chmod +x installer.sh && ./installer.sh```<br /><br /><br />


# VPN server commands<br />
```/etc/init.d/vpnserver start - to start```<br />
```/etc/init.d/vpnserver restart - to restart```<br />
```/etc/init.d/vpnserver stop - to stop```<br /><br />

* vpncmd is at /usr/local/vpnserver<br /><br />

If you can't connect to your vpn server using VPN server manager. Open this ports on your firewall dashboard if you are using Google cloud, Amazon AWS, Alibaba Cloud and Digital Ocean<br />

TCP 443<br />
TCP 992<br />
TCP 1194<br />
TCP 5555<br />



