connection
connectTo: aHost on: aPort with: aStreamClass

	| hostAddress |
	self ssl ifTrue: [^ self sslConnectTo: aHost on: aPort].
	
	hostAddress := NetNameResolver addressForName: aHost.
	self close.
	self stream: (aStreamClass openConnectionToHost: hostAddress port: aPort)