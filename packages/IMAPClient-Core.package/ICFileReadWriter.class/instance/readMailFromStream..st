read file
readMailFromStream: aStream

	| jsonFile |
	
	jsonFile := Json readFrom: aStream.
		
	^ ICEmail new
		header: (self createHeaderFrom: (jsonFile at: 'header'));
		body: (jsonFile at: 'body');
		messageID: (jsonFile at: 'messageID');		
		uniqueID: (jsonFile at: 'uid');
		yourself