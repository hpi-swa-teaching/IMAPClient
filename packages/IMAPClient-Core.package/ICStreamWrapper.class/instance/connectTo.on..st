connection
connectTo: host on: port

	| hostAddress |
	hostAddress := NetNameResolver addressForName: host.
	self close.
	self stream: (SocketStream openConnectionToHost: hostAddress port: port)