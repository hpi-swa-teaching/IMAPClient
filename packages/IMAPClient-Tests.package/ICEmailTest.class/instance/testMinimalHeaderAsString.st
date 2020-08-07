accessing
testMinimalHeaderAsString

	self 
		assert: self email minimalHeaderAsString 
		equals: self class expectedMinimalHeaderAsString