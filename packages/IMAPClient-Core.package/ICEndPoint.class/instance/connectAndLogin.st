login
connectAndLogin

	[^ self 
		connect;
		login]
	valueWithin: 4 seconds 
	onTimeout: [self connectionHandler handleTimeout.
		^false]