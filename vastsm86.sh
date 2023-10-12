#!/bin/bash

# Update package list and install necessary packages

sudo apt update
sleep 3
echo "-------------sudo apt update--------------"

sudo apt -y install ocl-icd-opencl-dev
sleep 3
echo "-------------sudo apt -y install ocl-icd-opencl-dev--------------"

sudo apt -y install nano
sleep 3
echo "-------------sudo apt -y install nano--------------"

sudo apt -y install cmake
sleep 3
echo "-------------sudo apt -y install cmake--------------"

sudo apt -y install python3-pip
sleep 3
echo "-------------sudo apt -y install python3-pip--------------"

sudo apt install screen
sleep 3
echo "-------------sudo apt install screen--------------"

# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git
sleep 3
echo "-------------git clone https://github.com/shanhaicoder/XENGPUMiner.git--------------"

cd XENGPUMiner
sleep 1
echo "-------------cd XENGPUMiner--------------"

chmod +x miner.sh
sleep 1
echo "-------------chmod +x miner.sh--------------"

chmod +x build.sh
sleep 1
echo "-------------chmod +x build.sh--------------"

./build.sh -cuda_arch sm_86
sleep 3
echo "-------------./build.sh -cuda_arch sm_86--------------"

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xE92104Fd9131217326329E71464F24DeD78f745c/g' config.conf
sleep 1
echo "-------------config.conf address changed--------------"

# Install Python requirements
sudo pip install -U -r requirements.txt
sleep 3
echo "-------------sudo pip install -U -r requirements.txt--------------"
