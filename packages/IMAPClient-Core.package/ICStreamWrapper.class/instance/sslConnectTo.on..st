connection
sslConnectTo: aHost on: aPort

	| hostAddress |
	
	hostAddress := NetNameResolver addressForName: aHost.
	self stream: (SecureSocketStream openConnectionToHost: hostAddress port: aPort timeout: self class connectionTimeout).
	self stream sslConnectTo: aHost