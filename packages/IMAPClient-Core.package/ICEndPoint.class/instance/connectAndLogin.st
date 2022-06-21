login
connectAndLogin

	[
		^ self
			connect;
			login]
		valueWithin: 5 seconds
		onTimeout: [
			self connectionHandler handleTimeout.
			^ false]