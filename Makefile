CXX = g++
CXXFLAGS = -Wall
CXXLIBS =

simple_server_objs = ServerSocket.o Socket.o simple_server_main.o
simple_client_objs = ClientSocket.o Socket.o simple_client_main.o

all: simple_server simple_client

simple_server: $(simple_server_objs)
	$(CXX) -o simple_server $(simple_server_objs)

simple_client: $(simple_client_objs)
	$(CXX) -o simple_client $(simple_client_objs)

clean:
	rm -rf *.o simple_server simple_client
