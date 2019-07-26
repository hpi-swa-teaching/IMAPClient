testing
testForValidIMAPString

	self should: [self accountInfo username: self class invalidUsername] raise: Error.
	self should: [self accountInfo password: self class invalidPassword] raise: Error.
	