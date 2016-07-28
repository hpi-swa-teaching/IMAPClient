connection
connectTo: host on: port

	(host = self server validHostIP and: [port = self server validPort])
		ifFalse: [ConnectionTimedOut signal].
	self connected: true.
	"TODO: find a better way to put server greetings in the responseQueue"
	"self responseQueue add: '. OK'"