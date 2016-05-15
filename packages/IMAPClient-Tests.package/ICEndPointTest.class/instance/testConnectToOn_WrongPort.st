connectToOn
testConnectToOn_WrongPort

	[self assert: (self endPoint connectTo: self class serverName on: self class serverInvalidPort)]
		on: Exception
		do: [ ^ self ].
	self fail