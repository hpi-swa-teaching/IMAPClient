connection
checkConnected
	
	self isConnected 
		ifFalse: [
			self fatalErrorOccured: true.
			^ false].
  
	^ true