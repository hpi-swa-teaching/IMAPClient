connection
connectTo: host on: port using: username and: password

	self user: username.
	self password: password.
	
	self openOnHost: (NetNameResolver addressForName: host) port: port. 