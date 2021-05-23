#!/usr/bin/env bash
####
echo "[TASK 1] apt Update"
sudo apt update -y
echo "[TASK 2] install python"
sudo apt -y install python3 python3-pip python3-setuptools python3-dev git vim wget
echo "[TASK 3] install tensorflow"
sudo wget https://tf.novaal.de/westmere/tensorflow-2.5.0-cp38-cp38-linux_x86_64.whl -P /home/vagrant/
sudo pip3 install /home/vagrant/tensorflow-2.5.0-cp38-cp38-linux_x86_64.whl
sudo pip3 install tensorflow-compression
sudo pip3 install tensorflow-cpu
#sudo pip3 install --upgrade tensorflow requests tensorflow-compression
echo "[TASK 4] install Jupyter"
sudo mkdir -p /vagrant/jupyter
sudo pip3 install --upgrade jupyter
echo "[TASK 5] Run Jupyter in terminal"
echo "sudo jupyter notebook --no-browser --port=8888 --notebook-dir=/vagrant/jupyter --allow-root --ip=192.168.20.20"

