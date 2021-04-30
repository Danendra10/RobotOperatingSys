# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bismillah_fp3: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ibismillah_fp3:/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bismillah_fp3_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg" NAME_WE)
add_custom_target(_bismillah_fp3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bismillah_fp3" "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg" ""
)

get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg" NAME_WE)
add_custom_target(_bismillah_fp3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bismillah_fp3" "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bismillah_fp3
)
_generate_msg_cpp(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bismillah_fp3
)

### Generating Services

### Generating Module File
_generate_module_cpp(bismillah_fp3
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bismillah_fp3
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bismillah_fp3_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bismillah_fp3_generate_messages bismillah_fp3_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_cpp _bismillah_fp3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_cpp _bismillah_fp3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bismillah_fp3_gencpp)
add_dependencies(bismillah_fp3_gencpp bismillah_fp3_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bismillah_fp3_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bismillah_fp3
)
_generate_msg_eus(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bismillah_fp3
)

### Generating Services

### Generating Module File
_generate_module_eus(bismillah_fp3
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bismillah_fp3
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bismillah_fp3_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bismillah_fp3_generate_messages bismillah_fp3_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_eus _bismillah_fp3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_eus _bismillah_fp3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bismillah_fp3_geneus)
add_dependencies(bismillah_fp3_geneus bismillah_fp3_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bismillah_fp3_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bismillah_fp3
)
_generate_msg_lisp(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bismillah_fp3
)

### Generating Services

### Generating Module File
_generate_module_lisp(bismillah_fp3
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bismillah_fp3
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bismillah_fp3_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bismillah_fp3_generate_messages bismillah_fp3_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_lisp _bismillah_fp3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_lisp _bismillah_fp3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bismillah_fp3_genlisp)
add_dependencies(bismillah_fp3_genlisp bismillah_fp3_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bismillah_fp3_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bismillah_fp3
)
_generate_msg_nodejs(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bismillah_fp3
)

### Generating Services

### Generating Module File
_generate_module_nodejs(bismillah_fp3
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bismillah_fp3
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bismillah_fp3_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bismillah_fp3_generate_messages bismillah_fp3_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_nodejs _bismillah_fp3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_nodejs _bismillah_fp3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bismillah_fp3_gennodejs)
add_dependencies(bismillah_fp3_gennodejs bismillah_fp3_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bismillah_fp3_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bismillah_fp3
)
_generate_msg_py(bismillah_fp3
  "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bismillah_fp3
)

### Generating Services

### Generating Module File
_generate_module_py(bismillah_fp3
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bismillah_fp3
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bismillah_fp3_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bismillah_fp3_generate_messages bismillah_fp3_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/potition.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_py _bismillah_fp3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danendra2210/FP_IRIS/src/bismillah_fp3/msg/ball_coor.msg" NAME_WE)
add_dependencies(bismillah_fp3_generate_messages_py _bismillah_fp3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bismillah_fp3_genpy)
add_dependencies(bismillah_fp3_genpy bismillah_fp3_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bismillah_fp3_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bismillah_fp3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bismillah_fp3
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bismillah_fp3_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bismillah_fp3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bismillah_fp3
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bismillah_fp3_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bismillah_fp3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bismillah_fp3
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bismillah_fp3_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bismillah_fp3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bismillah_fp3
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bismillah_fp3_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bismillah_fp3)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bismillah_fp3\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bismillah_fp3
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bismillah_fp3_generate_messages_py std_msgs_generate_messages_py)
endif()
