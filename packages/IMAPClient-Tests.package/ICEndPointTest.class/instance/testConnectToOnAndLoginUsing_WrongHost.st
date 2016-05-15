connectToOnAndLoginUsing
testConnectToOnAndLoginUsing_WrongHost

	[self assert: (self endPoint connectTo: self class serverInvalidName on: self class serverPort andLogin: self class serverUsername using: self class serverPassword)]
		on: Exception
		do: [ ^ self ].
	self fail