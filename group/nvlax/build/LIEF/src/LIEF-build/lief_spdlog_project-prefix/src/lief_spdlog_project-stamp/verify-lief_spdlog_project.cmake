# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//spdlog-1.9.2.zip" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//spdlog-1.9.2.zip")
  message(FATAL_ERROR "File not found: /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//spdlog-1.9.2.zip")
endif()

if("SHA256" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("130bd593c33e2e2abba095b551db6a05f5e4a5a19c03ab31256c38fa218aa0a6" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//spdlog-1.9.2.zip'")

file("SHA256" "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//spdlog-1.9.2.zip" actual_value)

if(NOT "${actual_value}" STREQUAL "130bd593c33e2e2abba095b551db6a05f5e4a5a19c03ab31256c38fa218aa0a6")
  message(FATAL_ERROR "error: SHA256 hash of
  /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//spdlog-1.9.2.zip
does not match expected value
  expected: '130bd593c33e2e2abba095b551db6a05f5e4a5a19c03ab31256c38fa218aa0a6'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
