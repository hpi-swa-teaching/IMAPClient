storage
addConfiguration: anAccountInfo
	
	(anAccountInfo isValid) ifFalse: [self error: 'Not a valid AccountInfo'].
	self basicConnectionConfigurations add: anAccountInfo