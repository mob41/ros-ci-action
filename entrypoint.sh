#!/bin/bash
set -e

source "/opt/ros/noetic/setup.bash"

cd /ws
exec catkin_make
