#!/bin/bash

ws_path=simulation_ws
src_path=$ws_path/src

# install necessary packages
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential git -y
sudo apt install ros-$ROS_DISTRO-slam-gmapping -y
sudo apt install ros-$ROS_DISTRO-openslam-gmapping -y
sudo apt install ros-$ROS_DISTRO-map_server -y
sudo apt install ros-$ROS_DISTRO-amcl -y
sudo apt install ros-$ROS_DISTRO-navigation -y
sudo apt install ros-$ROS_DISTRO-gazebo-ros -y
rospack list >> /dev/null

# Build code
mkdir -p $src_path
git clone https://github.com/skylerpan/turtlebot3.git $src_path
git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git $src_path
git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git $src_path
cd $ws_path
catkin_make
cd ..
