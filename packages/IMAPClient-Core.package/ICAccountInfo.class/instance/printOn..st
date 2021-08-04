printing
printOn: aStream

	aStream nextPut: ({
		self accountName.
		self host.
		self port.
		self username.
		self password.
		self ssl
	} joinSeparatedBy: ' ')