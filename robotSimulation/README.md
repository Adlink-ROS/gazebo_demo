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
