printing
printOn: aStream

	aStream nextPutAll: ({
		self accountName.
		self host.
		self port.
		self username.
		self password.
		self ssl
	} joinSeparatedBy: ' ')