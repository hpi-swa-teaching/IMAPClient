as yet unclassified
sendCommand: aCommand

	Transcript show: aCommand.
	self responseQueue addAll: (self class responses at: aCommand ifAbsent: self class badResponse).