#!/usr/bin/env sh

export NODE_PATH="/usr/local/lib/node_modules"

. /home/yujin/rocon_p2p_delivery/devel/setup.sh

export CONCERT_AUTO_ENABLE_SERVICES="[admin, teleop]"
#export CONCERT_AUTO_ENABLE_SERVICES="[admin, teleop, indoor_2d_map_prep]"
export CONCERT_WEBSERVER_ADDRESS=192.168.10.65
export CONCERT_ROSBRIDGE_ADDRESS=192.168.10.65
export CONCERT_NAME=uber
export ROS_HOSTNAME=192.168.10.65
export ROS_MASTER_URI=http://192.168.10.65:11311

