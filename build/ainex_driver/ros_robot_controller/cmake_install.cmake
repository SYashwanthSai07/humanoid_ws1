# Install script for directory: /home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/niat/humanoid_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/niat/humanoid_ws/build/ainex_driver/ros_robot_controller/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_robot_controller/msg" TYPE FILE FILES
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_robot_controller/srv" TYPE FILE FILES
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv"
    "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_robot_controller/cmake" TYPE FILE FILES "/home/niat/humanoid_ws/build/ainex_driver/ros_robot_controller/catkin_generated/installspace/ros_robot_controller-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/include/ros_robot_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/share/roseus/ros/ros_robot_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/share/common-lisp/ros/ros_robot_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/share/gennodejs/ros/ros_robot_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/niat/humanoid_ws/devel/lib/python2.7/dist-packages/ros_robot_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/lib/python2.7/dist-packages/ros_robot_controller" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/lib/python2.7/dist-packages/ros_robot_controller" FILES_MATCHING REGEX "/home/niat/humanoid_ws/devel/lib/python2\\.7/dist-packages/ros_robot_controller/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/niat/humanoid_ws/build/ainex_driver/ros_robot_controller/catkin_generated/installspace/ros_robot_controller.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_robot_controller/cmake" TYPE FILE FILES "/home/niat/humanoid_ws/build/ainex_driver/ros_robot_controller/catkin_generated/installspace/ros_robot_controller-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_robot_controller/cmake" TYPE FILE FILES
    "/home/niat/humanoid_ws/build/ainex_driver/ros_robot_controller/catkin_generated/installspace/ros_robot_controllerConfig.cmake"
    "/home/niat/humanoid_ws/build/ainex_driver/ros_robot_controller/catkin_generated/installspace/ros_robot_controllerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_robot_controller" TYPE FILE FILES "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/package.xml")
endif()

