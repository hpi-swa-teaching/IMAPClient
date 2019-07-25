testing
testNullObjectBehavior

	self assert: true equals: self nullStream close.
	self assert: false equals: self nullStream isConnected.
	self assert: String empty equals: self nullStream nextLine.
	
	self assert: false equals: (self nullStream sendCommand: String empty).
	self assert: false equals: (self nullStream sendCommand: '12345abcedfg').
	
	