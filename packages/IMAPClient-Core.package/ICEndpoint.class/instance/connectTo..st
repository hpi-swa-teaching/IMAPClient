connection
connectTo: serverInfo

	serverInfo isValid ifFalse: [ ^ Error signal: self class errorInvalidConnectionConfiguration ].
	
	self serverInfo: serverInfo.
	self openOnHost: (NetNameResolver addressForName: self serverInfo host) port: self serverInfo port.
	^ true