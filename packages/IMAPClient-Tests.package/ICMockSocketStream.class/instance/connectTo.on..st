connection
connectTo: host on: port

	(host = self server validHost and: [port = self server validPort])
		ifFalse: [ConnectionTimedOut signal].
	self connected: true.