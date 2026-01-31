# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ainex_interfaces: 10 messages, 8 services")

set(MSG_I_FLAGS "-Iainex_interfaces:/home/niat/humanoid_ws/src/ainex_interfaces/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ainex_interfaces_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv" "ainex_interfaces/RGB"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg" "ainex_interfaces/ObjectInfo"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg" "ainex_interfaces/ROI"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv" "ainex_interfaces/WalkingParam"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg" "ainex_interfaces/ROI:ainex_interfaces/ColorDetect:ainex_interfaces/LineROI"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv" ""
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg" "ainex_interfaces/PixelPosition:std_msgs/Header"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv" "ainex_interfaces/WalkingParam"
)

get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg" NAME_WE)
add_custom_target(_ainex_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ainex_interfaces" "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg" "ainex_interfaces/ROI:ainex_interfaces/LineROI"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)

### Generating Services
_generate_srv_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_cpp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
)

### Generating Module File
_generate_module_cpp(ainex_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ainex_interfaces_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ainex_interfaces_generate_messages ainex_interfaces_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_cpp _ainex_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ainex_interfaces_gencpp)
add_dependencies(ainex_interfaces_gencpp ainex_interfaces_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ainex_interfaces_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)

### Generating Services
_generate_srv_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_eus(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
)

### Generating Module File
_generate_module_eus(ainex_interfaces
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ainex_interfaces_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ainex_interfaces_generate_messages ainex_interfaces_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_eus _ainex_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ainex_interfaces_geneus)
add_dependencies(ainex_interfaces_geneus ainex_interfaces_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ainex_interfaces_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)

### Generating Services
_generate_srv_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_lisp(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
)

### Generating Module File
_generate_module_lisp(ainex_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ainex_interfaces_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ainex_interfaces_generate_messages ainex_interfaces_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_lisp _ainex_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ainex_interfaces_genlisp)
add_dependencies(ainex_interfaces_genlisp ainex_interfaces_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ainex_interfaces_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)

### Generating Services
_generate_srv_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_nodejs(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
)

### Generating Module File
_generate_module_nodejs(ainex_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ainex_interfaces_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ainex_interfaces_generate_messages ainex_interfaces_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_nodejs _ainex_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ainex_interfaces_gennodejs)
add_dependencies(ainex_interfaces_gennodejs ainex_interfaces_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ainex_interfaces_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_msg_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg;/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)

### Generating Services
_generate_srv_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv"
  "${MSG_I_FLAGS}"
  "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)
_generate_srv_py(ainex_interfaces
  "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
)

### Generating Module File
_generate_module_py(ainex_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ainex_interfaces_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ainex_interfaces_generate_messages ainex_interfaces_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetString.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetRGB.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/RGB.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingCommand.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/PixelPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectsInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetPoint.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/LineROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingState.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ROI.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/WalkingParam.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/GetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorsDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetFloat.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/FingerPosition.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/srv/SetWalkingParam.srv" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niat/humanoid_ws/src/ainex_interfaces/msg/ColorDetect.msg" NAME_WE)
add_dependencies(ainex_interfaces_generate_messages_py _ainex_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ainex_interfaces_genpy)
add_dependencies(ainex_interfaces_genpy ainex_interfaces_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ainex_interfaces_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ainex_interfaces
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ainex_interfaces_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ainex_interfaces_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ainex_interfaces
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ainex_interfaces_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ainex_interfaces_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ainex_interfaces
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ainex_interfaces_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ainex_interfaces_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ainex_interfaces
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ainex_interfaces_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ainex_interfaces_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ainex_interfaces
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ainex_interfaces_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ainex_interfaces_generate_messages_py geometry_msgs_generate_messages_py)
endif()
