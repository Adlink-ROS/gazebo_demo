# SimpleBot

* Transformation: XACRO => URDF => SDF

```bash
# XACRO => URDF
xacro simplebot.xacro > simplebot.urdf
# URDF => SDF
gz sdf -p simplebot.urdf > simplebot.sdf
```

* Run the model in ROS 1

```bash
# Terminal 1: Run Gazebot with ROS
rosrun gazebo_ros gazebo
# Terminal 2: Run SDF for Gazebo
rosrun gazebo_ros spawn_model -file simplebot.sdf -sdf -model simplebot
# Terminal 2 (Another option): Run URDF for Gazebo
rosrun gazebo_ros spawn_model -file simplebot.urdf -urdf -model simplebot
```

* Run the model in ROS 2
  - Need to setup environment for each terminal first

```bash
# Setup environment for each terminal
export GAZEBO_MODEL_PATH=$HOME/gazebo_demo/sdf
# Terminal 1: Run Gazebo server with ROS
gzserver -s libgazebo_ros_init.so -s libgazebo_ros_factory.so --verbose
# Terminal 2: Run Gazebo client
gzclient
# Terminal 3: Use SDF for Gazebo
ros2 run gazebo_ros spawn_entity.py -file myrobot/myrobot.sdf -entity myrobot -spawn_service_timeout 300
# Terminal 3 (Another option): Use URDF for Gazebo
$ ros2 run gazebo_ros spawn_entity.py -file myrobot/myrobot.urdf -entity myrobot -spawn_service_timeout 300
```
