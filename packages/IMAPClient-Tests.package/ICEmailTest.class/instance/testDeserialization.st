accessing
testDeserialization
	| mail |
	mail := ICEmail new deserializeFrom: self class givenJsonObject.
	self assert: mail equals: self class expectedMailObject