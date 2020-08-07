accessing
testSerialization
	
	self assert: (Json readFrom: (ReadStream on: self class expectedMailObject serializeToJson))
		equals: self class givenJsonObject