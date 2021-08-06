connection
refreshConnectionProcess

	[self isConnected and: [self loggedIn]]
		whileTrue: [
			self sendDirectCommand: ICCommand noop..
			(Delay forSeconds: self class refreshConnectionIntervalInSeconds) wait]