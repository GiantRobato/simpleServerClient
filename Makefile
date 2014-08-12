CXX = g++
CXXFLAGS = -Wall
CXXLIBS =

simple_server_objs = Server/ServerSocket.o Socket/Socket.o obj/simple_server_main.o
simple_client_objs = Client/ClientSocket.o Socket/Socket.o obj/simple_client_main.o

all: simple_server simple_client

simple_server: $(simple_server_objs)
	$(CXX) -o simple_server $(simple_server_objs)

simple_client: $(simple_client_objs)
	$(CXX) -o simple_client $(simple_client_objs)

Server/ServerSocket.o: Server/ServerSocket.cpp
	$(MAKE) -C Server

Client/ClientSocket.o: Client/ClientSocket.cpp
	$(MAKE) -C Client

Socket/Socket.o: Socket/Socket.cpp
	$(MAKE) -C Socket

obj/simple_server_main.o: simple_server_main.cpp
	$(CXX) -c simple_server_main.cpp
	mv simple_server_main.o obj

obj/simple_client_main.o: simple_client_main.cpp
	$(CXX) -c simple_client_main.cpp
	mv simple_client_main.o obj

clean:
	rm -rf *.o simple_server simple_client
	rm -rf obj/*
	$(MAKE) -C Server clean
	$(MAKE) -C Client clean
	$(MAKE) -C Socket clean
