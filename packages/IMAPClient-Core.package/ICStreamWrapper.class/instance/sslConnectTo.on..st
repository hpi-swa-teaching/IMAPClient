connection
sslConnectTo: host on: port

	| hostAddress |
	
	hostAddress := NetNameResolver addressForName: host.
	self stream: (SecureSocketStream openConnectionToHost: hostAddress port: port timeout: self class connectionTimeout).
	self stream sslConnectTo: host