testing
testPrintOn

	| stream |
	stream := ReadWriteStream on: (Array new: 10).
	self accountInfo printOn: stream.
	self assert: self class expectedStringRepresentation equals: stream contents first.