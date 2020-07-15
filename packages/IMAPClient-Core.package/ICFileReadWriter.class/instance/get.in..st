read file
get: aFile in: aPath

	| filestream jsonFile |
	
	filestream := FileStream readOnlyFileNamed: aPath, FileDirectory slash, aFile asString.
	jsonFile := Json readFrom: filestream.
	filestream close.
		
	^ ICEmail new
		header: (self createHeaderFrom: (jsonFile at: 'header'));
		body: (jsonFile at: 'body');
		messageID: (jsonFile at: 'messageID');		
		uniqueID: (jsonFile at: 'uid');
		yourself