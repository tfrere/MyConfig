 sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu wheezy main" > /etc/apt/sources.list.d/ros-latest.list'
 wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

 sudo apt-get update
 sudo apt-get upgrade

 sudo apt-get install python-pip python-setuptools python-yaml python-argparse python-distribute python-docutils python-dateutil python-six

 sudo pip install rosdep rosinstall_generator wstool rosinstall

 sudo rosdep init
 rosdep update

mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws

# communication tools
#rosinstall_generator ros_comm --rosdistro indigo --deps --wet-only --exclude roslisp --tar > indigo-ros_comm-wet.rosinstall
#wstool init src indigo-ros_comm-wet.rosinstall

# robot tools
rosinstall_generator desktop --rosdistro indigo --deps --wet-only --exclude roslisp --tar > indigo-desktop-wet.rosinstall
wstool init src indigo-desktop-wet.rosinstall

#robot strict
rosinstall_generator robot --rosdistro indigo --deps --wet-only --tar > indigo-robot-wet.rosinstall
wstool init src indigo-robot-wet.rosinstall

