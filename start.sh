#!/bin/bash
source /opt/ros/lyrical/setup.bash
export FASTDDS_BUILTIN_TRANSPORTS=UDPv4
gz sim -r ~/ros2_sim/diff_world.sdf &
sleep 5
ros2 run ros_gz_bridge parameter_bridge \
  '/cmd_vel@geometry_msgs/msg/Twist]gz.msgs.Twist' \
  '/odom@nav_msgs/msg/Odometry[gz.msgs.Odometry' \
  '/tf@tf2_msgs/msg/TFMessage[gz.msgs.Pose_V' \
  '/clock@rosgraph_msgs/msg/Clock[gz.msgs.Clock'
