connectToOnAndLoginUsing
testConnectToOnAndLoginUsing_WrongHost

	self should: [ self endPoint connectTo: self class serverInvalidName on: self class serverPort andLogin: self class serverUsername using: self class serverPassword ] raise: ConnectionTimedOut
	