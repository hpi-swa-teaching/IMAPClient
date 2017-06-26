connection
sslConnectTo: host on: port

	| hostAddress |
	
	hostAddress := NetNameResolver addressForName: host.
	self stream: (SecureSocketStream openConnectionToHost: hostAddress  port: port timeout: 10).
	self stream sslConnectTo: host.