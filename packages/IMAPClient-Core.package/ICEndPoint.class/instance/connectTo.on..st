connection
connectTo: host on: port
	Transcript show: 'connecting'.
	self connectTo: (ICServerInfo for: host using: port) with: SocketStream.
	Transcript show: 'connected'.