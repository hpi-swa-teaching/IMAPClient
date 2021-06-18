accessing
readWriter

	^ readWriter ifNil: [readWriter := ICFileReadWriter newWith: self]