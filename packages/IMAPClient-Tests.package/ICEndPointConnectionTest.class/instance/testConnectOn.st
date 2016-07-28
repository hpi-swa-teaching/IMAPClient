connectOn
testConnectOn

	self shouldnt: (endPoint connectTo: self class validHost  on: self class validPort with: ICMockSocketStream) raise: Exception.
	"self assert: endPoint isConnected"