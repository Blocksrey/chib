# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//frozen-e6ddc43.zip" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//frozen-e6ddc43.zip")
  message(FATAL_ERROR "File not found: /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//frozen-e6ddc43.zip")
endif()

if("SHA256" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("7aa0ab44eb91fc2c2431bd2e78bd3545aae750793a880064f6df0ef84c819065" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//frozen-e6ddc43.zip'")

file("SHA256" "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//frozen-e6ddc43.zip" actual_value)

if(NOT "${actual_value}" STREQUAL "7aa0ab44eb91fc2c2431bd2e78bd3545aae750793a880064f6df0ef84c819065")
  message(FATAL_ERROR "error: SHA256 hash of
  /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//frozen-e6ddc43.zip
does not match expected value
  expected: '7aa0ab44eb91fc2c2431bd2e78bd3545aae750793a880064f6df0ef84c819065'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
