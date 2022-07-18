# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//tcb-span-427f6bd.zip" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//tcb-span-427f6bd.zip")
  message(FATAL_ERROR "File not found: /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//tcb-span-427f6bd.zip")
endif()

if("SHA256" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("3fde1bb8be41da080d10ad18b3b7a6b1045349dc8ae64fc4380b977478ec68d3" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//tcb-span-427f6bd.zip'")

file("SHA256" "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//tcb-span-427f6bd.zip" actual_value)

if(NOT "${actual_value}" STREQUAL "3fde1bb8be41da080d10ad18b3b7a6b1045349dc8ae64fc4380b977478ec68d3")
  message(FATAL_ERROR "error: SHA256 hash of
  /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//tcb-span-427f6bd.zip
does not match expected value
  expected: '3fde1bb8be41da080d10ad18b3b7a6b1045349dc8ae64fc4380b977478ec68d3'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
