# Install script for directory: /home/niat/humanoid_ws/src/ainex_interfaces

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ainex_interfaces/msg" TYPE FILE FILES
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg"
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg"
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg"
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg"
    "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ainex_interfaces/srv" TYPE FILE FILES
    "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv"
    "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv"
    "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv"
    "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv"
    "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv"
    "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv"
    "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv"
    "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ainex_interfaces/cmake" TYPE FILE FILES "/home/niat/humanoid_ws/build/ainex_interfaces/catkin_generated/installspace/ainex_interfaces-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/include/ainex_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/share/roseus/ros/ainex_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/share/common-lisp/ros/ainex_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/share/gennodejs/ros/ainex_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/niat/humanoid_ws/devel/lib/python2.7/dist-packages/ainex_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niat/humanoid_ws/devel/lib/python2.7/dist-packages/ainex_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/niat/humanoid_ws/build/ainex_interfaces/catkin_generated/installspace/ainex_interfaces.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ainex_interfaces/cmake" TYPE FILE FILES "/home/niat/humanoid_ws/build/ainex_interfaces/catkin_generated/installspace/ainex_interfaces-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ainex_interfaces/cmake" TYPE FILE FILES
    "/home/niat/humanoid_ws/build/ainex_interfaces/catkin_generated/installspace/ainex_interfacesConfig.cmake"
    "/home/niat/humanoid_ws/build/ainex_interfaces/catkin_generated/installspace/ainex_interfacesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ainex_interfaces" TYPE FILE FILES "/home/niat/humanoid_ws/src/ainex_interfaces/package.xml")
endif()

