accessing
close
	
	self stream ifNotNil: [self stream close. stream := nil].
	self isConnected: false.