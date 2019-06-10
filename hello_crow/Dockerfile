FROM bbox:latest

# use build directory as starting directory
WORKDIR /usr/src/cpp_serve/hello_crow/
COPY . .

WORKDIR /usr/src/cpp_serve/hello_crow/build
RUN cmake .
RUN make

# run the following command
CMD ["./hello_crow"]