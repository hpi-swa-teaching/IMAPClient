connection
handleTimeout
		
	(self fatalErrorOccured)
		ifFalse: [
			self inform: 'Connection could not be established due to a timeout'.
			self fatalErrorOccured: true]