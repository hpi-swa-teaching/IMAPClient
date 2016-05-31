error handling
checkConnected

	self isConnected ifFalse: [ ^ Error signal: self class errorNoConnection ]