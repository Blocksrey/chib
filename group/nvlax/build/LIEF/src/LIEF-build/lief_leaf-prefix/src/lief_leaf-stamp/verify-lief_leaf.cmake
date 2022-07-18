# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//leaf-a781140.zip" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//leaf-a781140.zip")
  message(FATAL_ERROR "File not found: /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//leaf-a781140.zip")
endif()

if("SHA256" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("af980c4b5288dd78f4ac47b42899cfeb47b335cd3191f8b3cd95b67be419b941" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//leaf-a781140.zip'")

file("SHA256" "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//leaf-a781140.zip" actual_value)

if(NOT "${actual_value}" STREQUAL "af980c4b5288dd78f4ac47b42899cfeb47b335cd3191f8b3cd95b67be419b941")
  message(FATAL_ERROR "error: SHA256 hash of
  /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//leaf-a781140.zip
does not match expected value
  expected: 'af980c4b5288dd78f4ac47b42899cfeb47b335cd3191f8b3cd95b67be419b941'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
