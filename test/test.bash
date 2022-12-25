#!/bin/bash
# SPDX-FileCopyrightText: 2022 Shuma Suzuki
# SPDX-LIcense-Identifier: BSD-3-Clause

dir=~
[ "$1" != "" ] && dir="$1"

cd $dir/ros2_ws
colcon build
source $dir/.bashrc
timeout 12 ros2 launch mypkg talk_listen.launch.py > /tmp/mypkg.log

cat /tmp/mypkg.log |
grep 'Lisien: 10' 
