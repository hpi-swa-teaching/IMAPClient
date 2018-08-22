connection
connectTo: host on: port

	| hostAddress |
	
	self useSSL ifTrue: [^ self sslConnectTo: host on: port].
	
	hostAddress := NetNameResolver addressForName: host.
	self close.
	self stream: (SocketStream openConnectionToHost: hostAddress port: port)