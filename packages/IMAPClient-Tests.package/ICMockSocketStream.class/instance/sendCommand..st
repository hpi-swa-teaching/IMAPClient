connection
sendCommand: aCommand

	self responseQueue addAll: (self server respondTo: aCommand)