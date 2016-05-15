connectToOnAndLoginUsing
testConnectToOnAndLoginUsing_WrongPort

	[self assert: (self endPoint connectTo: self class serverName on: self class serverInvalidPort andLogin: self class serverUsername using: self class serverPassword)]
		on: Exception
		do: [ ^ self ].
	self fail