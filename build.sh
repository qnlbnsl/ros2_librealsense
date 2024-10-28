#!/bin/bash
OS=ubuntu:noble
ROS_DISTRO=rolling
source /opt/ros/$ROS_DISTRO/setup.bash

sudo apt-get install python3-rosdep -y
sudo rosdep init # "sudo rosdep init --include-eol-distros" for Foxy and earlier
rosdep update # "sudo rosdep update --include-eol-distros" for Foxy and earlier
rosdep install -i --from-path src --rosdistro $ROS_DISTRO --os=$OS --skip-keys=librealsense2 -y

source /opt/ros/$ROS_DISTRO/setup.bash
