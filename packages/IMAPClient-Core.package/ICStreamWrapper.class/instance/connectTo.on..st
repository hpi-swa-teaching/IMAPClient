connection
connectTo: host on: port

	| hostAddress |
	hostAddress := NetNameResolver addressForName: host.
	self close.
	(self useSSL)
		ifTrue: [ self sslConnectTo: hostAddress on: port ]
		ifFalse: [ self stream: (SocketStream openConnectionToHost: hostAddress port: port) ]