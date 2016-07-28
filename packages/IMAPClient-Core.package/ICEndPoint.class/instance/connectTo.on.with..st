connection
connectTo: aHost on: aPort with: aStreamClass

	self connectTo: (ICServerInfo for: aHost using: aPort) with: aStreamClass