## Get your shell automaitcally
shell=`echo $SHELL | awk -F '/' '{print $NF}'`

export TURTLEBOT3_MODEL=waffle_pi
export ROS_MASTER_URI=http://localhost:11311
source simulation_ws/devel/setup.$shell
unset ROS_IP
