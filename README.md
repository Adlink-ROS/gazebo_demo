# Introduction
This repo contains some demo code for Gazebo tutorial.

# models
The folder contains 2 models: myBot and rosBot.

## myBot
This example will show the vehicle which can follow object.

* Open Gazebo
```
gazebo
```
* Add Path to Model Database.
* Find and add myBot.
* You can put rectangle behind the vehicle, and the vehicle will follow it.

## rosBot
This example will show the vehicle which can be controlled by ROS.

**Every terminal open here should have ROS environment setup.**
You can use [ros_dotfiles](https://github.com/Adlink-ROS/ros_dotfiles) provided by ADLINK to simplify the process.

* Open a terminal and run roscore.
```
roscore
```
* Open another terminal for Gazebo with ROS.
```
rosrun gazebo_ros gazebo
```
* Open another terminal to add the model to Gazebo.
```
rosrun gazebo_ros spawn_model -file <the path for model.sdf of rosBot> -sdf -model <name shown in gazebo>
```
* Run teleop
```
rosrun teleop_twist_keyboard teleop_twist_keyboard.py
```

# robotSimulation
* Setup environment
```
# In ROS 1 melodic
git clone https://github.com/Adlink-ROS/gazebo_demo.git
cd ~/workspace/gazebo_demo/robotSimulation
source setup.sh
```
* Run Gazebo World
```
# In ROS 1 melodic
source model.sh
roslaunch turtlebot3_gazebo turtlebot3_world.launch
```
* Run teleop
```
# In ROS 1 melodic
source model.sh
roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
```
* SLAM and save map
```
# In ROS 1 melodic
source model.sh
roslaunch turtlebot3_slam turtlebot3_slam.launch
# Save map
rosrun map_server map_saver -f ~/sim_map
```
* Navigation
```
roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/sim_map.yaml
```
