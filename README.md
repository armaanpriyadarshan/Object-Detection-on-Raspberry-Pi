# Object-Detection-on-Raspberry-Pi

### This Tutorial Covers How to deploy the new TensorFlow 2 Object Detection Models as well Custom Object Detection Models on the Raspberry Pi

***Note: TensorFlow Lite is much more popular on smaller devices such as the Raspberry Pi, but with the recent release of the TensorFlow 2 Custom Object Detection API and TensorFlow saved_model format, TensorFlow Lite has become quite error-prone with these newer models. Upon testing, converted tflite models weren't very stable nor compatible with the tflite_runtime module. However, this is sure to change with time to come! So be sure to stay tuned and alert for new guides coming soon!***

## Introduction

Continuing with my tutorial on the TensorFlow 2 Object Detection API, what better way to deploy an Object Detection Model than on the Raspberry Pi? This guide will contain step-by-step instructions to do exactly so. To make everything as easy as possible for you guys, I have simplified all the commands into a few shellscripts compressing tons of commands into only a few! I've also provided three object detection scripts for images, video, and real-time object detection with the Pi Camera! Many thanks to my friend Gareth Bolton who helped me out with testing and refining my instructions!

**I will soon make a YouTube Tutorial which will be posted [here](), and an extremely import step [here](https://www.youtube.com/channel/UCT9t2Bug62RDUfSBcPt0Bzg?sub_confirmation=1)!**

## Table of Contents
1. [Setting up the Raspberry Pi and Getting Updates]()
2. [Organizing our Workspace and Virtual Environment]()
3. [Installing TensorFlow, OpenCV, and other Prerequisites]()
4. [Testing out our Model ]()
