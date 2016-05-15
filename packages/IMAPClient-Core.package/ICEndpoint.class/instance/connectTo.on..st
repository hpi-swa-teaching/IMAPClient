connection
connectTo: host on: port

	self openOnHost: (NetNameResolver addressForName: host) port: port. 