# Install script for directory: /home/farisrafi/catkin_ws/src/2wheeled_robot/simple_robot/simple_robot_description_4wheels

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/farisrafi/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/farisrafi/catkin_ws/build/2wheeled_robot/simple_robot/simple_robot_description_4wheels/catkin_generated/installspace/simple_robot_description_4wheels.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simple_robot_description_4wheels/cmake" TYPE FILE FILES
    "/home/farisrafi/catkin_ws/build/2wheeled_robot/simple_robot/simple_robot_description_4wheels/catkin_generated/installspace/simple_robot_description_4wheelsConfig.cmake"
    "/home/farisrafi/catkin_ws/build/2wheeled_robot/simple_robot/simple_robot_description_4wheels/catkin_generated/installspace/simple_robot_description_4wheelsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simple_robot_description_4wheels" TYPE FILE FILES "/home/farisrafi/catkin_ws/src/2wheeled_robot/simple_robot/simple_robot_description_4wheels/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simple_robot_description_4wheels" TYPE DIRECTORY FILES
    "/home/farisrafi/catkin_ws/src/2wheeled_robot/simple_robot/simple_robot_description_4wheels/launch"
    "/home/farisrafi/catkin_ws/src/2wheeled_robot/simple_robot/simple_robot_description_4wheels/urdf"
    )
endif()

