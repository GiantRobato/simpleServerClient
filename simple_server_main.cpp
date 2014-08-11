#include "ServerSocket.h"
#include "SocketException.h"
#include <iostream>
#include <string>

int main ( int argc, char** argv ){
  std::cout << "running....\n";

  try {
      // Create the socket
      ServerSocket server ( 30000 );

    while ( true ){

	  ServerSocket new_sock;
	  server.accept ( new_sock );

	  try {
		//if we uncomment below we can continuously echo data
//	  	while ( true ){
		std::string data;
		new_sock >> data;
		new_sock << data;
//		}
	  } catch ( SocketException& ) {}

	  break; //end the server after we echo a connection
	}//end of while
  }  catch ( SocketException& e ){
      std::cout << "Exception was caught:" << e.description() << "\nExiting.\n";
  }

  return 0;
}
