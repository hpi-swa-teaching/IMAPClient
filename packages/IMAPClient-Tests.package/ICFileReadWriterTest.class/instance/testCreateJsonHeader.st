accessing
testCreateJsonHeader
	
	self assert: (self readWriter createJsonHeaderFrom: self class expectedMailObject header) equals: self class expectedJsonHeader