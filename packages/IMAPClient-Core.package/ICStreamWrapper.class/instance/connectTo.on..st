accessing
connectTo: host on: port

	| hostAddress |
	hostAddress := NetNameResolver addressForName: host.
	self stream: (SocketStream openConnectionToHost: hostAddress port: port)
	