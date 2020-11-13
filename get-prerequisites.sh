# Installs Prerequisites for OpenCV

sudo apt-get install libhdf5-dev libhdf5-serial-dev libhdf5-103
sudo apt-get install libqtgui4 libqtwebkit4 libqt4-test python3-pyqt5
sudo apt-get install libatlas-base-dev
sudo apt-get install libjasper-dev

# Installs OpenCV pip package

pip install opencv-python==4.1.0.25

# Install prerequisites for TensorFlow 2.2.0

sudo apt-get install gfortran
sudo apt-get install libhdf5-dev libc-ares-dev libeigen3-dev
sudo apt-get install libatlas-base-dev libopenblas-dev libblas-dev
sudo apt-get install liblapack-dev cython
sudo pip3 install pybind11
sudo pip3 install h5py
sudo pip3 install --upgrade setuptools
pip install gdown
sudo cp /home/pi/.local/bin/gdown /usr/local/bin/gdown
gdown https://drive.google.com/uc?id=11mujzVaFqa7R1_lB7q0kVPW22Ol51MPg

# Install the Downloaded Wheel

pip install tensorflow-2.2.0-cp37-cp37m-linux_armv7l.whl

# A Few more Prerequisites for the TensorFlow Object Detection API and Testing

pip install matplotlib
sudo apt-get install protobuf-compiler

# Print Success Message

echo Prerequisites Downloaded Successfully
