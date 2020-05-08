# Introduction
This repo contains the Gazebo model example for tutorial.

# myBot
This example will show the vehicle which can follow object.

* Open Gazebo
```
gazebo
```
* Add Path to Model Database.
* Find and add myBot.
* You can put rectangle behind the vehicle, and the vehicle will follow it.

# rosBot
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
