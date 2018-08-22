connection
refreshConnectionProcess

	| delayTime |
	
	delayTime := 60 * 10.  "Wait for 10 minutes."
	
	[self isConnected and: [self isLoggedIn]]
		whileTrue: [
			self sendCommand: self class noopCommand.
			self fetchNextResponse.
			Transcript show: 'Prevent timeout'.
			(Delay forSeconds: delayTime) wait]