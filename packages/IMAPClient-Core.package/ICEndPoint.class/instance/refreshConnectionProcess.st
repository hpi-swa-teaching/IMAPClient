connection
refreshConnectionProcess
	
	[self isConnected and: self isLoggedIn] whileTrue: [
		self sendCommand: self class noopCommand.
		self fetchNextResponse.
		Transcript show: ('Just called Delay ', TimeStamp now).
		(Delay forSeconds: 60*28) wait.
	].
	Transcript show: 'Thread terminated'