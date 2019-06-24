storage
addConfiguration: aDictionary
	
	(self checkValidConfiguration: aDictionary) ifFalse: [self error: 'Not a valid dataDictionary'].
	self connectionConfigurations add: aDictionary