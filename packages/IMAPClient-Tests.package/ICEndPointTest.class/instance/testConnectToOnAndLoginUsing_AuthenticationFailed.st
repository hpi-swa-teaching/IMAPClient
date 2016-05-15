connectToOnAndLoginUsing
testConnectToOnAndLoginUsing_AuthenticationFailed

	[self assert: (self endPoint connectTo: self class serverName on: self class serverPort andLogin: self class serverInvalidUsername using: self class serverInvalidPassword)]
		on: Exception
		do: [ ^ self ].
	self fail