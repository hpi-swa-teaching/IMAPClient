accessing
username

	username ifNil: 
		[self username: self class initialUsername].
	^ username