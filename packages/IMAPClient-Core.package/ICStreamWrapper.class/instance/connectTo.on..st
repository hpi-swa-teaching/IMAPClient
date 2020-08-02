connection
connectTo: aHost on: aPort

	| hostAddress |
	
	self ssl ifTrue: [^ self sslConnectTo: aHost on: aPort].
	
	hostAddress := NetNameResolver addressForName: aHost.
	self close.
	self stream: (SocketStream openConnectionToHost: hostAddress port: aPort)