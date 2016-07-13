connection
sslConnectTo: host on: port

	| socket |
	socket := SecureSocket newTCP.
	socket connectTo: host port: port.
	socket waitForConnectionFor: 10.
	socket sslConnectTo: host.
	self stream: (SecureSocketStream on: socket)