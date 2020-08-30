# Clone the TensorFlow Models Repository, Compile the Protos, Add Object Detection Module to Path

git clone https://github.com/tensorflow/models.git
cd models/research
protoc object_detection/protos/*.proto --python_out=.
export PYTHONPATH=$PYTHONPATH:/home/pi/tensorflow/models/research:/home/pi/tensorflow/models/research/slim

# Return to our Directory 
 cd ../..
 
# Echo Success Message

echo TensorFlow Object Detection API Setup Successfully!
