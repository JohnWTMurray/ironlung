# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/risk/ironlung/_deps/curl-src"
  "/home/risk/ironlung/_deps/curl-build"
  "/home/risk/ironlung/_deps/curl-subbuild/curl-populate-prefix"
  "/home/risk/ironlung/_deps/curl-subbuild/curl-populate-prefix/tmp"
  "/home/risk/ironlung/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp"
  "/home/risk/ironlung/_deps/curl-subbuild/curl-populate-prefix/src"
  "/home/risk/ironlung/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/risk/ironlung/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/${subDir}")
endforeach()
