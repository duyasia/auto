#!/bin/bash
echo "=================================================="
echo "\033[0;35m"
echo "     _____          ___                       ___           ___                       ___      ";
echo "    /  /::\        /__/\          ___        /  /\         /  /\        ___          /  /\     ";
echo "   /  /:/\:\       \  \:\        /__/|      /  /::\       /  /:/_      /  /\        /  /::\    ";
echo "  /  /:/  \:\       \  \:\      |  |:|     /  /:/\:\     /  /:/ /\    /  /:/       /  /:/\:\   ";
echo " /__/:/ \__\:|  ___  \  \:\     |  |:|    /  /:/~/::\   /  /:/ /::\  /__/::\      /  /:/~/::\  ";
echo " \  \:\ /  /:/ /__/\  \__\:\  __|__|:|   /__/:/ /:/\:\ /__/:/ /:/\:\ \__\/\:\__  /__/:/ /:/\:\ ";
echo "  \  \:\  /:/  \  \:\ /  /:/ /__/::::\   \  \:\/:/__\/ \  \:\/:/~/:/    \  \:\/\ \  \:\/:/__\/ ";
echo "   \  \:\/:/    \  \:\  /:/     ~\~~\:\   \  \::/       \  \::/ /:/      \__\::/  \  \::/      ";
echo "    \  \::/      \  \:\/:/        \  \:\   \  \:\        \__\/ /:/       /__/:/    \  \:\      ";
echo "     \__\/        \  \::/          \__\/    \  \:\         /__/:/        \__\/      \  \:\     ";
echo "                   \__\/                     \__\/         \__\/                     \__\/     ";
echo "";
echo "                      Install Docker on Raspber Pi 4 ";
echo "                                   https://duy.asia ";
echo "\e[0m"
echo "=================================================="

sleep 2

echo "\e[1m\e[32m1. Update and Upgrade... \e[0m" && sleep 1
sudo apt-get update && sudo apt-get upgrade -y

echo "=================================================="

echo "\e[1m\e[32m2. Install Docker... \e[0m" && sleep 1
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh 

echo "=================================================="

echo "\e[1m\e[32m3. Test Docker... \e[0m" && sleep 1
docker version

echo "=================================================="

echo "\e[1m\e[32m4. Install Docker Compose... \e[0m" && sleep 1
sudo apt-get update && sudo apt-get install libffi-dev libssl-dev && sudo apt install -y python3-dev && sudo apt-get install -y python3 python3-pip && sudo pip3 install docker-compose

echo "=================================================="

echo "\e[1m\e[32m5. Enable the Docker system service... \e[0m" && sleep 1
sudo systemctl enable docker

echo "=================================================="

echo "\e[1m\e[32mComplete... \e[0m"
