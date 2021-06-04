login
connectAndLogin

	[self 
		connect;
		login]
	valueWithin: 30 seconds 
	onTimeout: [self connectionHandler handleTimeout]