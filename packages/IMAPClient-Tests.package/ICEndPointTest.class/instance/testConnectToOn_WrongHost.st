connectToOn
testConnectToOn_WrongHost

	[self assert: (self endPoint connectTo: self class serverInvalidName on: self class serverPort)]
		on: Exception
		do: [ ^ self ].
	self fail