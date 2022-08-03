mockMethods
readWriter

	^ readWriter ifNil: [readWriter := ICMockReadWriter new]