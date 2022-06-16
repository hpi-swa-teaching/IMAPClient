connection
connectTo: host on: port

	(host = self server validHostIP and: [port = self server validPort]) ifFalse: [ConnectionTimedOut signal].
	
	self connected: true.
	self responseQueue add: '. OK'