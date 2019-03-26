3D Tracking via Kinect
=================

This is an ROS-based research project that would allow a user to draw in mid-air using a 3d-printed custom object e.g., a white board marker. Two main components of this project are Simtrack and iai_kinect. They are used as is with minor configurational changes. 

Screenshots
-----------

The idea was to allow users to use custom pens and track them using the ROS app. Here is a model of stabilo pen we created: 
![][image-1]
 
...and the tracking in the app: 
![][image-2]
   
This could also be done with multiple objects at the same time (with different textures). The user can also just upload a 3d model of a real world object and then track it.
![][image-3]


Background Information
----------------------------

[SimTrack](http://www.karlpauwels.com/simtrack) is a simulation-based framework for camera tracking. It is also a package for [ROS](http://www.ros.org/), an operating system that can run on Windows PC, which can be used for detecting and tracking the pose of multiple, textured rigid objects in real-time. SimTrack is released under the [BSD-license](http://opensource.org/licenses/BSD-3-Clause). It uses SiftGPU for feature extraction, which has a different [license](siftgpu/license.txt). Therefore, if you do use Simtrack in your research, please cite the following paper: 

*Pauwels, Karl and Kragic, Danica (2015) [SimTrack: A Simulation-based Framework for Scalable Real-time Object Pose Detection and Tracking](http://www.karlpauwels.com/downloads/iros_2015/Pauwels_IROS_2015.pdf). IEEE/RSJ International Conference on Intelligent Robots and Systems, Hamburg, Germany, 2015.*

For details of the object detection technique, see the following paper: 

*Pauwels, Karl; Rubio, Leonardo; Ros, Eduardo (2015) [Real-time Pose Detection and Tracking of Hundreds of Objects](http://www.karlpauwels.com/downloads/tcsvt_2015/Pauwels_IEEE_TCSVT_2015.pdf). IEEE Transactions on Circuits and Systems for Video Technology, in press.*

[IAI Kinect2](https://github.com/code-iai/iai_kinect2) is opensource driver package for Microsoft Kinect Sensor (V2) maanged by [Thiemo Wiedemeyer](https://github.com/code-iai/iai_kinect2).



Project Goals
---------------

Following are some of the main goals for developing and setting up the following project:

    * It has to be affordable for the DIY maker community. 
    * It needs to be provide robust tracking of objects (e.g., multiple types of pen)
    * Maximize tracking and avoid occlusions possibly by using multiple kinects.


Hardware Requirements and Setup
----------------------------------------

The hardware used is a crucial part for this project to be performant. Here are the minimum requirements:

    * 8GB RAM (16 GB recommended)
    * EFCI Enables Motherboard (Secure Boot Disabled)
    * Core i7 CPU (0r 4+Ghz processeor for robust SIFT model analyses)
    * GTX 1060 (6 GB) (recommended TWO GPU system) (Must support CUDA)


Installation
------------

1. Install Ubuntu 16.04.

For Ubuntu OS installation please follow [Installation Guide (OS)](https://www.ubuntu.com/download/desktop/install-ubuntu-desktop)

2. Setup CUDA
```
CUDA 8 Installation: The safest and fastest way to install CUDA Toolkit and proprietary drivers is through .deb over the network
sudo dpkg -i cuda-repo-ubuntu1604_(current_stable version)_amd64.deb
sudo apt-get update
sudo apt-get install cuda
gedit ~/.bashrc
export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64\ ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
```
3. Test your CUDA with the CUDA samples
```
cuda-install-samples-8.0.sh ~
cd ~/NVIDIA_CUDA-8.0_Samples/5_Simulations/nbody
make
./nbody
```
Possible problems:

- Matching SM architecture is crucial to CUDA based acceleration, please find the write gencode for your device (exmaple GTX 1060 is based on SM_61), to understand more you can start with the following links:


ROS Kinetic Installation
---------------------------

1. Set up your Sources list
```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```
2. Set up your Keys
```
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
```
3. Update your repo
```
sudo apt-get update
```
4. Desktop Full Install
```
sudo apt-get install ros-kinetic-desktop-full
```
5. Initialize resdep
```
sudo rosdep init
rosdep update
```
6. Add Path to your system
```
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
```
7. Additional ros tools for easy navigation and packaging
```
sudo apt-get install python-rosinstall
```


Workspace Setup
--------------------

As we install ROS KINETIC, we can follow the following sample setup:

1. Load the Enviromantal setup file into your terminal:
```source /opt/ros/kinetic/setup.bash```

2. Create your Workspace:
```
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
```
3. Build your Workspace
```
cd ~/catkin_ws/
catkin_make
```
4. Source your new bash file:
```
source devel/setup.bash
```
4. make sure `ROS_PACKAGE_PATH` environment variable includes the directory you're in
```
echo $ROS_PACKAGE_PATH /home/youruser/catkin_ws/src:/opt/ros/kinetic/share
```

Workspace
-------------

1. Get root access for file editing. 
```
gksu nautilus
```
2. Run the Following Commands from terminal by first nvigating to your workdirectory:

```
Run Commands (all in diffrent terminals)
```
3. Install roscore
```
roslaunch simtrack_nodes main_kinect2.launch
```
4. Install rviz
```
rostopic echo /tf > data.txt
```


Debug Instructions
----------------------
add_definitions( -fexceptions )
https://github.com/giacomodabisias/libfreenect2pclgrabber/issues/17

Build failure: https://github.com/code-iai/iai_kinect2/issues/377

Simtrack (Kinetic Version)
Solution:
Careful is advised when trying to fix theses warnings manually creating links.
I run:
sudo mv /usr/lib/nvidia-384/libEGL.so.1 /usr/lib/nvidia-384/libEGL.so.1.org
sudo mv /usr/lib32/nvidia-384/libEGL.so.1 /usr/lib32/nvidia-384/libEGL.so.1.org
sudo ln -s /usr/lib/nvidia-384/libEGL.so.384 /usr/lib/nvidia-384/libEGL.so.1
sudo ln -s /usr/lib32/nvidia-384/libEGL.so.384 /usr/lib32/nvidia-384/libEGL.so.1
And ended up unable to boot into a graphical interface. I was able to recover by running:
dpkg-reconfigure nvidia-384

Build the SIFT-model of the THREE provided demo objects. Note that an absolute path is required:
```
rosrun interface cmd_line_generate_sift_model `pwd`/src/simtrack/data/object_models/ros_fuerte/ros_fuerte.obj
rosrun interface cmd_line_generate_sift_model `pwd`/src/simtrack/data/object_models/ros_groovy/ros_groovy.obj
rosrun interface cmd_line_generate_sift_model `pwd`/src/simtrack/data/object_models/ros_hydro/ros_hydro.obj
```

[image-1]: https://github.com/i10/3DTrackingViaKinect/blob/master/images/stabilo-3d-models.png "Stabilo pen 3D model"
[image-2]: https://github.com/i10/3DTrackingViaKinect/blob/master/images/stabilo-pen-detected.png "Detected stabilo pen"
[image-3]: https://github.com/i10/3DTrackingViaKinect/blob/master/images/white-board-marker.jpg "Detected white board marker"
