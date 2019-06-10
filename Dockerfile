FROM gcc:7.3.0

RUN apt-get -qq update
RUN apt-get -qq upgrade
RUN apt-get -qq install cmake
RUN apt-get -qq install libboost-all-dev=1.62.0.1
RUN apt-get -qq install build-essential libtcmalloc-minimal4 && \
    ln -s /usr/lib/libtcmalloc_minimal.so.4 /usr/lib/libtcmalloc_minimal.s0

# RUN BASH ON DOCKER CONTAINER
# sudo docker run -ti $workspace:latest bash

# Create a volumne - enables editing on local computer and building in docker container
# sudo docker run -v <host full path>:/usr/src/folder_name serve -ti $workspace:latest bash

# Open port with mapping
# -e exports PORT as an environment variable
# sudo docker run -v <host>:<container> -p <host port>:<container port> -e PORT=8081 <image> <app to run>
# sudo docker run -v /home/daniel/Desktop/Learning/cpp_serve:/usr/src/cpp_serve -p 8080:8080 -e PORT=8080 cpp_serve:latest /usr/src/cpp_serve/hello_crow/build/hello_crow