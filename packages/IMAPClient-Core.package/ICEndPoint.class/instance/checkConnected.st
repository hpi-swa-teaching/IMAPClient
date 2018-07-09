error handling
checkConnected

	(self fatalErrorOccured)
		ifTrue: [^ self].
		
	self stream isConnected ifFalse: [^ Error signal: self class errorNoConnection]