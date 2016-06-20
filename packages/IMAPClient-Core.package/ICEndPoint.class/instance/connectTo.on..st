connection
connectTo: host on: port

	^ self connectTo: (ICServerInfo for: host using: port)