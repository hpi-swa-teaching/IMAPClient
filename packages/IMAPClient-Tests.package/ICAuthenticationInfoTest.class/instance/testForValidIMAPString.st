as yet unclassified
testForValidIMAPString

	self should: [self authInfo username: self class invalidUsername] raise: Error.
	self should: [self authInfo password: self class invalidPassword] raise: Error.
	