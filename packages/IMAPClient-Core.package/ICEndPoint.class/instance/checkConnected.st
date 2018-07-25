error handling
checkConnected

	(self fatalErrorOccured)
		ifTrue: [^ false].
		
	self stream isConnected 
		ifFalse: [
			self fatalErrorOccured: true.
			^ false].
		
	^ true