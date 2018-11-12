cmake_minimum_required(VERSION 3.12)
project(HashSet)

set(CMAKE_CXX_STANDARD 11)

set(Sources wordfreq.cpp HashSet.cpp)
set(Headers HashSet.h)

add_executable(superlib ${Sources} ${Headers})