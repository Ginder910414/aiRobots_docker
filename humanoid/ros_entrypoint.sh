#!/bin/bash
set -e

echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/home/${USERNAME}/qt5/Qt5.12/lib" >> ~/.bashrc
echo "export Qt5_DIR=/home/${USERNAME}/qt5/Qt5.12/lib/cmake/Qt5" >> ~/.bashrc

# setup ros environment
source /opt/ros/${ROS_DISTRO}/setup.bash
exec "$@"