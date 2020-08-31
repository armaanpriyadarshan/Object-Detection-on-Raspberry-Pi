# Object-Detection-on-Raspberry-Pi

### This Tutorial Covers How to deploy the New TensorFlow 2 Object Detection Models and Custom Object Detection Models on the Raspberry Pi
<p align="center">
  <img src="doc/Thumbnail.png">
</p>

***Note: TensorFlow Lite is much more popular on smaller devices such as the Raspberry Pi, but with the recent release of the TensorFlow 2 Custom Object Detection API and TensorFlow saved_model format, TensorFlow Lite has become quite error-prone with these newer models. Upon testing, converted tflite models weren't very stable nor compatible with the tflite_runtime module. However, this is sure to change with time to come! So be sure to stay tuned and alert for new guides coming soon!***

## Introduction

Continuing with my tutorial on the TensorFlow 2 Object Detection API, what better way to deploy an Object Detection Model than on the Raspberry Pi? This guide will contain step-by-step instructions to do exactly so. To make everything as easy as possible for you guys, I have simplified all the commands into a few shellscripts compressing tons of commands into only a few! I've also provided three object detection scripts for images, video, and real-time object detection with the Pi Camera! Many thanks to my friend Gareth Bolton who helped me out with testing and refining my instructions!

**I will soon make a YouTube Tutorial which will be posted [here](), and an extremely import step [here](https://www.youtube.com/channel/UCT9t2Bug62RDUfSBcPt0Bzg?sub_confirmation=1)!**

## Table of Contents
1. [Setting up the Raspberry Pi and Getting Updates](https://github.com/armaanpriyadarshan/Object-Detection-on-Raspberry-Pi/blob/master/README.md#step-1-setting-up-the-raspberry-pi-and-getting-updates)
2. [Organizing our Workspace and Virtual Environment](https://github.com/armaanpriyadarshan/Object-Detection-on-Raspberry-Pi#step-2-organizing-our-workspace-and-virtual-environment)
3. [Installing TensorFlow, OpenCV, and other Prerequisites]()
4. [Testing out our Model ]()

## Step 1: Setting up the Raspberry Pi and Getting Updates
Before we can get started, we must have access to the Raspberry Pi's Desktop Interface. This can be done with VNC Viewer or the standard Monitor and HDMI. I made a more detailed video which can be found below

[![Link to my vid](https://github.com/armaanpriyadarshan/Object-Detection-on-Raspberry-Pi/blob/master/doc/Raspi%20vid.png)](https://www.youtube.com/watch?v=jVzMRlCNO3U)

Once you have access to the Desktop Interface, either remote or physical, open up a terminal. Retrieve updates for the Raspberry Pi with

```
sudo apt-get update
sudo apt-get dist-upgrade
```

Depending on how recently you setup or updated your Pi, this can be instantaneous or lengthy. After your Raspberry Pi is up-to-date, we should make sure our Camera is enabled. First to open up the System Interface, use

```
sudo raspi-config
```

Then navigate to Interfacing Options -> Camera and make sure it is enabled. Then hit Finish and reboot if necessary.

<p align="left">
  <img src="doc/Camera Interface.png">
</p>

## Step 2: Organizing our Workspace and Virtual Environment

Then, your going to want to clone this repository with

```
git clone https://github.com/armaanpriyadarshan/Object-Detection-on-Raspberry-Pi.git
```

This name is a bit long so let's trim it down with

```
mv Object-Detection-on-Raspberry-Pi tensorflow
```

We are now going to create a Virtual Environment to avoid version conflicts with previously installed packages on the Raspberry Pi. First, let's install virtual env with

```
sudo pip3 install virtualenv
```

Now, we can create our ```tensorflow``` virtual environment with

```
python3 -m venv tensorflow
```

There should now be a ```bin``` folder inside of our ```tensorflow``` directory. So let's change directories with

```
cd tensorflow
```

We can then activate our Virtual Envvironment with

```
source bin/activate
```

**Note: Now that we have a virtual environment, everytime you start a new terminal, you will no longer be in the virtual environment. You can reactivate it manually or issue ```echo "source tensorflow/bin/activate" >> ~/.bashrc```. This basically activates our Virtual Environment as soon as we open a new terminal. You can tell if the Virtual Environment is active by the name showing up in parenthesis next to the working directory.**

When you issue ```ls```, your ```tensorflow``` directory should now look something like this

<p align="center">
  <img src="doc/directory.png">
</p>
