#!/bin/bash

# Update package list and install necessary packages
#sudo apt update
#sleep 3
#echo "-------------sudo apt update--------------"

echo "-------------sudo apt -y install ocl-icd-opencl-dev--------------"
sudo apt -y install ocl-icd-opencl-dev
sleep 1

echo "-------------sudo apt -y install nano--------------"
sudo apt -y install nano
sleep 1

echo "-------------sudo apt -y install cmake--------------"
sudo apt -y install cmake
sleep 1

echo "-------------sudo apt -y install python3-pip--------------"
sudo apt -y install python3-pip
sleep 1

echo "-------------sudo apt install screen--------------"
sudo apt install screen
sleep 1

echo "-------------git clone https://github.com/shanhaicoder/XENGPUMiner.git--------------"
git clone https://github.com/gitkovsky/XENGPUMiner_2023_11_08.git
sleep 1

echo "-------------cd XENGPUMiner--------------"
cd XENGPUMiner_2023_11_08
sleep 1

echo "-------------chmod +x miner.sh--------------"
chmod +x miner.sh
sleep 1

echo "-------------chmod +x build.sh--------------"
chmod +x build.sh
sleep 1

echo "-------------./build.sh -cuda_arch sm_86--------------"
./build.sh -cuda_arch sm_89
sleep 1

echo "-------------sudo pip install -U -r requirements.txt--------------"
sudo pip install -U -r requirements.txt
sleep 1
