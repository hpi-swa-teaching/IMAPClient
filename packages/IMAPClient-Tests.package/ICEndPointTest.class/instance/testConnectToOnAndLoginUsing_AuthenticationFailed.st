connectToOnAndLoginUsing
testConnectToOnAndLoginUsing_AuthenticationFailed

	self should: [ self endPoint connectTo: self class serverName on: self class serverPort andLogin: self class serverInvalidUsername using: self class serverInvalidPassword ] raise: Exception