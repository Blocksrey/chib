# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//json-3.9.1.zip" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//json-3.9.1.zip")
  message(FATAL_ERROR "File not found: /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//json-3.9.1.zip")
endif()

if("SHA256" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("5db3b7b3356a0742e06b27b6ee744f8ee487ed9c0f8cf3f9778a2076e7a933ba" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//json-3.9.1.zip'")

file("SHA256" "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//json-3.9.1.zip" actual_value)

if(NOT "${actual_value}" STREQUAL "5db3b7b3356a0742e06b27b6ee744f8ee487ed9c0f8cf3f9778a2076e7a933ba")
  message(FATAL_ERROR "error: SHA256 hash of
  /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//json-3.9.1.zip
does not match expected value
  expected: '5db3b7b3356a0742e06b27b6ee744f8ee487ed9c0f8cf3f9778a2076e7a933ba'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
