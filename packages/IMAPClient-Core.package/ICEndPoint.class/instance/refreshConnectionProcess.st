connection
refreshConnectionProcess

	| delayTime |
	
	delayTime := 60 * 10.  "Wait for 10 minutes."
	
	[self isConnected and: [self loggedIn]]
		whileTrue: [
			self sendCommand: ICCommand noop.
			self fetchNextResponse.
			Transcript show: 'Prevent timeout'.
			(Delay forSeconds: delayTime) wait]