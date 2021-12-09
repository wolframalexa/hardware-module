#!/bin/bash

# This script takes a new device, installs the necessary packages for Marionette, and runs the program
# Alexa Jakob, 2021

# install tensorflow
sudo apt-get update
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran

sudo apt-get install python3-pip
sudo pip3 install -U pip testresources setuptools==49.6.0

sudo pip3 install -U --no-deps numpy==1.19.4 future==0.18.2 mock==3.0.5 keras_preprocessing==1.1.2 keras_applications==1.0.8 gast==0.4.0 protobuf pybind11 cython pkgconfig
sudo env H5PY_SETUP_REQUIRES=0 pip3 install -U h5py==3.1.0

sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v46 tensorflow


# get latest version of marionette
cd ../
git clone https://github.com/yure-r/BodyTrackingSpheres.git
cd BodyTrackingSpheres
cp index-sine.html index.html # necessary to make the GET request resolve. remove this line if there is already an index.html file

# install relevant packages to run
sudo apt-get install nodejs npm

# install packages
npm install express
npm install socket.io

# start program
npm start

# now, open your browser to http://localhost:8000 to see the results. be sure to have your webcam connected and to allow access.
