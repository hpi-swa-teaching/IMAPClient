connectToOnAndLoginUsing
testConnectToOnAndLoginUsing_WrongPort

	self should: [ self endPoint connectTo: self class serverName on: self class serverInvalidPort andLogin: self class serverUsername using: self class serverPassword ] raise: NetworkError