connection
sslConnectTo: host on: port

	| socket |
	socket := SecureSocket newTCP.
	socket 
		connectTo: host port: port;
		waitForConnectionFor: 10;
		sslConnectTo: host.
	self stream: (SecureSocketStream on: socket)