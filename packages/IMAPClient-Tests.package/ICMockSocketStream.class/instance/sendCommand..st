as yet unclassified
sendCommand: aCommand

	self responseQueue addAll: (self responses at: aCommand ifAbsent: self badResponse).