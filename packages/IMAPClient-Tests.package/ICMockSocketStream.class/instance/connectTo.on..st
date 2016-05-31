as yet unclassified
connectTo: host on: port

	(host = self validHost and: [port = self validPort])
		ifFalse: [ConnectionTimedOut signal].
	self isConnected: true.