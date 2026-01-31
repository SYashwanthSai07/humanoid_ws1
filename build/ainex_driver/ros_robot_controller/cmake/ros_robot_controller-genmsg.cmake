# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_robot_controller: 17 messages, 3 services")

set(MSG_I_FLAGS "-Iros_robot_controller:/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_robot_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv" "ros_robot_controller/BusServoPosition"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg" "ros_robot_controller/MotorState"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv" "ros_robot_controller/PWMServoState:ros_robot_controller/GetPWMServoCmd"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv" "ros_robot_controller/BusServoState:ros_robot_controller/GetBusServoCmd"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg" "ros_robot_controller/BusServoPosition"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg" "ros_robot_controller/RGBState"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg" "ros_robot_controller/BusServoState"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg" "ros_robot_controller/PWMServoState"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg" NAME_WE)
add_custom_target(_ros_robot_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_robot_controller" "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)

### Generating Services
_generate_srv_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_cpp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
)

### Generating Module File
_generate_module_cpp(ros_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_robot_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_robot_controller_generate_messages ros_robot_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_cpp _ros_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_robot_controller_gencpp)
add_dependencies(ros_robot_controller_gencpp ros_robot_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_robot_controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)

### Generating Services
_generate_srv_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_eus(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
)

### Generating Module File
_generate_module_eus(ros_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_robot_controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_robot_controller_generate_messages ros_robot_controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_eus _ros_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_robot_controller_geneus)
add_dependencies(ros_robot_controller_geneus ros_robot_controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_robot_controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)

### Generating Services
_generate_srv_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_lisp(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
)

### Generating Module File
_generate_module_lisp(ros_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_robot_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_robot_controller_generate_messages ros_robot_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_lisp _ros_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_robot_controller_genlisp)
add_dependencies(ros_robot_controller_genlisp ros_robot_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_robot_controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)

### Generating Services
_generate_srv_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_nodejs(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
)

### Generating Module File
_generate_module_nodejs(ros_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_robot_controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_robot_controller_generate_messages ros_robot_controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_nodejs _ros_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_robot_controller_gennodejs)
add_dependencies(ros_robot_controller_gennodejs ros_robot_controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_robot_controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_msg_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)

### Generating Services
_generate_srv_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)
_generate_srv_py(ros_robot_controller
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg;/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
)

### Generating Module File
_generate_module_py(ros_robot_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_robot_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_robot_controller_generate_messages ros_robot_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServosPosition.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetPWMServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/OLEDState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BuzzerState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/srv/GetBusServoState.srv" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/MotorState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServosPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/RGBsState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/ButtonState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetBusServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetBusServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/SetPWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/PWMServoState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/LedState.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/GetPWMServoCmd.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/BusServoPosition.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_driver/ros_robot_controller/msg/Sbus.msg" NAME_WE)
add_dependencies(ros_robot_controller_generate_messages_py _ros_robot_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_robot_controller_genpy)
add_dependencies(ros_robot_controller_genpy ros_robot_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_robot_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_robot_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_robot_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_robot_controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_robot_controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_robot_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_robot_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_robot_controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_robot_controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_robot_controller
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_robot_controller_generate_messages_py std_msgs_generate_messages_py)
endif()
