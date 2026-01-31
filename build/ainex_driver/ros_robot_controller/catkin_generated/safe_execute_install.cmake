execute_process(COMMAND "/home/niat/humanoid_ws/build/ainex_driver/ros_robot_controller/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/niat/humanoid_ws/build/ainex_driver/ros_robot_controller/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
