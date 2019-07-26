connection
refreshConnectionProcess

	[self isConnected and: [self loggedIn]]
		whileTrue: [
			self sendCommand: ICCommand noop.
			self fetchNextResponse.
			(Delay forSeconds: self class refreshConnectionIntervalInSeconds) wait]