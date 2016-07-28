connection
connectTo: aHost on: aPort with: aStream

	| hostAddress |
	hostAddress := NetNameResolver addressForName: aHost.
	self close.
	self stream: (aStream openConnectionToHost: hostAddress port: aPort)
	