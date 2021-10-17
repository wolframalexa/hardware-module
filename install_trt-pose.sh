#!/bin/bash
 # install PyTorch and Torchvision


# install torch2trt
git clone https:/github.com/NVIDIA-AI-IOT/torch2trt
cd torch2trt
sudo python3 setup.py --install plugins

# other packages
sudo pip3 install tqdm cython pycocotools
sudo apt-get install python3-matplotlib

# install trt-pose
git clone https://github.com/NVIDIA-AI-IOT/trt_pose
cd trt_pose
sudo python3 setup.py install




