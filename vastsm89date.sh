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
git clone https://github.com/shanhaicoder/XENGPUMiner.git
sleep 1

echo "-------------cd XENGPUMiner--------------"
cd XENGPUMiner
sleep 1

echo "-------------chmod +x miner.sh--------------"
chmod +x miner.sh
sleep 1

echo "-------------chmod +x build.sh--------------"
chmod +x build.sh
sleep 1

echo "-------------./build.sh -cuda_arch sm_89--------------"
./build.sh -cuda_arch sm_89
sleep 1

echo "-------------config.conf address changed--------------"
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xE92104Fd9131217326329E71464F24DeD78f745c/g' config.conf
sleep 1

echo "-------------sed -i 's@BLUE = "\\033\[34m@BLUE = "\\033\[36m@g' miner.py--------------"
sed -i 's@BLUE = "\\033\[34m@BLUE = "\\033\[36m@g' miner.py
sleep 1

echo "-------------sed -i 's@print(f"Mining block {i}...")@print(f"Mining block {i}..." + datetime.now().strftime('\''%Y-%m-%d %H:%M:%S'\''))@g' miner.py--------------"
sed -i 's@print(f"Mining block {i}...")@print(f"Mining block {i}..." + datetime.now().strftime('\''%Y-%m-%d %H:%M:%S'\''))@g' miner.py
sleep 1

echo "-------------sed -i 's@desc=f"{GREEN}Mining{RESET}"@desc=f"{datetime.now().strftime('\''%Y-%m-%d %H:%M:%S'\'')} {GREEN}Mining{RESET}"@g' miner.py--------------"
sed -i 's@desc=f"{GREEN}Mining{RESET}"@desc=f"{datetime.now().strftime('\''%Y-%m-%d %H:%M:%S'\'')} {GREEN}Mining{RESET}"@g' miner.py
sleep 1

echo "-------------sudo pip install -U -r requirements.txt--------------"
sudo pip install -U -r requirements.txt
sleep 1
