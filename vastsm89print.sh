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

echo "-------------miner.py change BLUE color--------------"
sed -i 's@BLUE = "\\033\[34m@BLUE = "\\033\[36m@g' miner.py
sleep 1

echo "-------------miner.py add current datetime before tqdm--------------"
sed -i 's@    with tqdm(total=None, dynamic_ncols=True,@    print(datetime.now().strftime('\''%Y-%m-%d %H:%M:%S'\''))\n\n    with tqdm(total=None, dynamic_ncols=True,@g' miner.py
sleep 1

echo "-------------miner.py add datetime after Server Response 1--------------"
sed -i 's@^\                    print("Server Response:", response.json())@                    print("Server Response:", response.json())\n                    print(datetime.now().strftime('\''%Y-%m-%d %H:%M:%S'\''))@g' miner.py
sleep 1

echo "-------------miner.py add datetime after Server Response 2--------------"
sed -i 's@^\            print("Server Response:", response.json())@            print("Server Response:", response.json())\n            print(datetime.now().strftime('\''%Y-%m-%d %H:%M:%S'\''))@g' miner.py
sleep 1

echo "-------------miner.py add datetime after Server Response 3--------------"
sed -i 's@^\                print("Server Response:", response.json())@                print("Server Response:", response.json())\n                print(datetime.now().strftime('\''%Y-%m-%d %H:%M:%S'\''))@g' miner.py
sleep 1

echo "-------------miner.py add datetime to Mining block CPU--------------"
sed -i 's@print(f"Mining block {i}...")@print(f"Mining block {i}..." + datetime.now().strftime('\''%Y-%m-%d %H:%M:%S'\''))@g' miner.py
sleep 1

echo "-------------miner.py print--------------"
sed -i 's@^\                    filepath = os.path.join(BlockDir, filename)@                    filepath = os.path.join(BlockDir, filename)\n                    print(filepath)@g' miner.py
sleep 1

echo "-------------miner.py print--------------"
sed -i 's@^\                        data = f.read()@                        data = f.read()\n                        print(data)@g' miner.py
sleep 1

echo "-------------sudo pip install -U -r requirements.txt--------------"
sudo pip install -U -r requirements.txt
sleep 1
