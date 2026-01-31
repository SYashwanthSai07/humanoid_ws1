cmake_minimum_required(VERSION 3.0.2)
project(walk_demo)

find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  ainex_kinematics
)

catkin_python_setup()

catkin_package(
  CATKIN_DEPENDS 
    rospy 
    std_msgs
    ainex_kinematics
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

# Install Python scripts
catkin_install_python(PROGRAMS
  scripts/walking.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

# Install launch files
install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
