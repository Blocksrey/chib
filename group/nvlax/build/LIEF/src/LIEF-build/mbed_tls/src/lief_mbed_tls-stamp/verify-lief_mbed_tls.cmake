# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//mbedtls-3.1.0.zip" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//mbedtls-3.1.0.zip")
  message(FATAL_ERROR "File not found: /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//mbedtls-3.1.0.zip")
endif()

if("SHA256" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("8ec791eaed8332c50cade2bcc17b75ae5931ac00824a761b5aa4e7586645b72b" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//mbedtls-3.1.0.zip'")

file("SHA256" "/home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//mbedtls-3.1.0.zip" actual_value)

if(NOT "${actual_value}" STREQUAL "8ec791eaed8332c50cade2bcc17b75ae5931ac00824a761b5aa4e7586645b72b")
  message(FATAL_ERROR "error: SHA256 hash of
  /home/jeff/ChibiLinux/group/nvlax/build/_deps/lief_src-src/third-party//mbedtls-3.1.0.zip
does not match expected value
  expected: '8ec791eaed8332c50cade2bcc17b75ae5931ac00824a761b5aa4e7586645b72b'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
