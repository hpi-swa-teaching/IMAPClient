as yet unclassified
connectTo: host on: port

	(host = ICEndPointTest serverName and: [port = ICEndPointTest serverPort])
		ifFalse: [ConnectionTimedOut signal].
	self isConnected: true.