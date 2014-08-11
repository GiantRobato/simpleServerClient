Simple Server-Client Program
============================

Features:
---------
-creates a simple tcp server (defaults to port 3000)
-creates a simple tcp client
-base socket class, implemented server and client classes

Installation:
-------------
```
$ git clone https://github.com/penguindustin/simpleServerClient.git
```

Usage:
------
```
$ cd simpleServerClient
$ make all
$ ./simple_Server &
```
This creates a simple server running in the background. By running:
```
$ ./simple_Client
```
The console should print out:
```
We recieved this response from the server:
"Test message."
```
and stops the server.

Tips
----
>**ServerSocket server(port no.)**
>
>Cretes a socket on port no. You also need to run:
>
>```
>ServerSocket new_sock;
>server.accept (new_sock);
>```
>
>to get a reference to the connection and by running:
>
>```
>std::string data
>new_sock >> data;
>```
>
>you set up a blocking call to listen on the connection and write the
>data out to the string

