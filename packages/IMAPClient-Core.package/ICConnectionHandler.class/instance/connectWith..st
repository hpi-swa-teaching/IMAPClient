connection
connectWith: aStreamClass

	self accountInfo isValid ifFalse: [^ self handleInvalidAccountInfo].
	
	[
		self stream
			ssl: self accountInfo ssl;
			connectTo: self accountInfo host on: self accountInfo port with: aStreamClass;
			nextResponse
		"skip server greetings"]
		on: Error
		do: [self fatalErrorOccured: true]