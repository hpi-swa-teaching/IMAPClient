login
connectAndLogin

	[^ self 
		connect;
		login]
	valueWithin: 2 seconds 
	onTimeout: [self connectionHandler handleTimeout.
		^false]