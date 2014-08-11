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
