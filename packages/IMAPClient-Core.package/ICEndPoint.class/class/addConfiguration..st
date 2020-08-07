storage
addConfiguration: aDictionary
	
	(self checkValidConfiguration: aDictionary) ifFalse: [self error: 'Not a valid dataDictionary'].
	self basicConnectionConfigurations add: aDictionary