accessing
username

	^ username ifNil: [self username: self class invalidUsername].