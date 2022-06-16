accessing
testDeserialization

	| stream |
	stream := ReadWriteStream on: String new.
	self class givenJsonObject jsonWriteOn: stream.
	self assert: (ICEmail newFromJsonStream: stream) equals: self class expectedMailObject