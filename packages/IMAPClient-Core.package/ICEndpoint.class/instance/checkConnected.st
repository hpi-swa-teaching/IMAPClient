error handling
checkConnected

	self stream isConnected ifFalse: [ ^ Error signal: self class errorNoConnection ]