#!/bin/bash
clear
tput setaf 1; echo "                   ╱▔▔▔▔╲    
                  ▕▕╲┊┊╱▏▏   
                  ▕▕▂╱╲▂▏▏   
                   ╲┊┊┊┊╱   
                   ▕╲▂▂╱▏   
               ╱▔▔▔▔┊┊┊┊▔▔▔▔╲
             Ngrok Quick Support
             ███████████████████
             █▄─▄▄─█▄─▄▄─█▄─▀─▄█
             ██─▄█▀██─▄████▀─▀█
	     ▀▄▄▄▄▄▀▄▄▄▀▀▀▄▄█▄▄▀

	 ░█─── ▀█▀ ░█▄─░█ ░█─▄▀ ░█▀▀▀█
         ░█─── ░█─ ░█░█░█ ░█▀▄─ ─▀▀▀▄▄
         ░█▄▄█ ▄█▄ ░█──▀█ ░█─░█ ░█▄▄▄█ " | lolcat 
		echo "	Please subscribe EFX Tv		" |toilet -f term -F border --gay
echo -en "\e0\e[1;92m\n"
echo -en "\e[1;31m[\e[0m\e[1;37m01\e[0m\e[1;31m]\e[0m\e[1;93m PROVIDE EXECUTION PERMISSIONS\e[0m\n"
echo -en "\e[1;31m[\e[0m\e[1;37m02\e[0m\e[1;31m]\e[0m\e[1;93m PAYLOAD LINK SHARE\e[0m\n"
echo -en "\e[1;31m[\e[0m\e[1;37m03\e[0m\e[1;31m]\e[0m\e[1;93m ONLY PORT FORWARD\e[0m\n"
echo -en "\e[1;31m[\e[0m\e[1;37m04\e[0m\e[1;31m]\e[0m\e[1;93m TCP PORT FORWARD \e[0m\n"
echo -en "\e[1;31m[\e[0m\e[1;37m05\e[0m\e[1;31m]\e[0m\e[1;93m IP SHARE \e[0m\n"
#New
echo -en "\e[1;31m[\e[0m\e[1;37m06\e[0m\e[1;31m]\e[0m\e[1;93m WEB CLONE AND HOST \e[0m\n"
#Newends
echo -en "\e[1;31m[\e[0m\e[1;37m07\e[0m\e[1;31m]\e[0m\e[1;93m UPDATE NGROK \e[0m\n"
echo -en "\e[1;31m[\e[0m\e[1;37m08\e[0m\e[1;31m]\e[0m\e[1;93m CLOSE ALL CONNECTIONS \e[0m\n"
echo -en "\e[1;31m[\e[0m\e[1;37m09\e[0m\e[1;31m]\e[0m\e[1;93m SAYCHEESE II (new) \e[0m\n"
echo -en "\e[1;31m[\e[0m\e[1;37m00\e[0m\e[1;31m]\e[0m\e[1;93m QUIT \e[0m\n"
echo -en "[\e[0mENTER\e[1;92m] Please select your Requirement :"
read input

if [[ $input == "1" || $input == "01" ]];
then
chmod -R 755 *
sleep 2
echo -en "[\e[0m+\e[1;92m] Returning back to main menu \n"
sleep 2
./run.sh
  
elif [[ $input == "2" || $input == "02" ]];
then
  cd 1
  ./PayloadS.sh
  
elif [[ $input == "3" || $input == "03" ]];
then
  cd 1
  ./PortF.sh
  
 elif [[ $input == "4" || $input == "04" ]];
then
  cd 1
  ./tcp.sh

 elif [[ $input == "5" || $input == "05" ]];
then
  cd 1
  ./Ipshare.sh
  
  #NEW
 elif [[ $input == "6" || $input == "06" ]];
then
  cd 1
  ./webclone.sh
  #NEW

  
  elif [[ $input == "7" || $input == "07" ]];
then
  cd 1
printf "\e[1;92m[\e[0m-+\e[1;92m] Checking for Ngrok Executable...\n"
sleep 3
if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
printf "\e[1;31m[\e[0m\e[1;37m-X\e[0m\e[1;31m]\e[0m\e[1;92m Ngrok not found in the directory...\e[0m\e[1;93m %s \n"
printf "\e[1;92m[\e[0mOk\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -q --show-progress
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip -q --show-progress
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok 
chmod +x ngrok-stable-linux-386.zip
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi
#END

echo -en "[\e[0mOk\e[1;92m] Please provide authtoken \e[0m\e[1;37mDonot include \e[1;31m[./ngrok authtoken\e[0m\e[1;31m]\e[0m\e[1;93m :"
read ato
./ngrok authtoken $ato
sleep 2
echo -en "[\e[0mOk\e[1;92m] Updating... :"
./ngrok update
sleep 2
echo -en "[\e[0mOk\e[1;92m] Finishing check... \n"

 echo -en "[\e[0m+\e[1;92m] Please wait... \n"
sleep 5
printf "\e[1;31m[\e[0m\e[1;37m+\e[0m\e[1;31m]\e[0m\e[1;92m Finishing update check... \e[0m\e[1;93m %s \n"
sleep 2
echo -en "[\e[0m+\e[1;92m] Returning back to main menu \n"
sleep 2
cd -
./run.sh
  
  
elif [[ $input == "8" || $input == "08" ]];
then
killall -2 ngrok > /dev/null 2>&1
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
killall -2 ssh > /dev/null 2>&1
echo -en "[\e[0m+\e[1;92m] Please wait... \n"
sleep 5
printf "\e[1;31m[\e[0m\e[1;37m+\e[0m\e[1;31m]\e[0m\e[1;92m Successfully closed.... \e[0m\e[1;93m %s \n"
sleep 2
echo -en "[\e[0m+\e[1;92m] Returning back to main menu \n"
sleep 2
./run.sh
#EFXCHEESE
elif [[ $input == "9" || $input == "09" ]];
then
  killall -2 ngrok > /dev/null 2>&1
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
killall -2 ssh > /dev/null 2>&1
echo -en "[\e[0m+\e[1;92m] Please wait... \n"
sleep 2
printf "\e[1;31m[\e[0m\e[1;37m+\e[0m\e[1;31m]\e[0m\e[1;92m We are going to run SAYCHEESE... \e[0m\e[1;93m %s \n"
sleep 3
#ngrok http 6666
cd efxcheese
cp ngrok ../1
php -S localhost:6666 > /dev/null 2>&1 &
bash efxcheese.sh


#EFXCHEESEENDS

elif [[ $input == "0" || $input == "00" ]];
then
sleep 2
echo -en "[\e[0m+\e[1;92m] Thank you \n"
sleep 2
  exit
else
  echo "Please enter a valid number."
fi
