FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ninja-build cmake g++
RUN apt-get install -y libssl-dev lcov cppcheck
