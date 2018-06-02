read file
get: aFile in: aFolder
	| filestream jsonFile |
	filestream := FileStream readOnlyFileNamed: aFolder, FileDirectory slash, aFile asString.
	jsonFile := Json readFrom: filestream.
	filestream close.
	^ ICEmail new
		header: (self createHeaderFrom: (jsonFile at: 'header'));
		body: (jsonFile at: 'body');
		messageID: (jsonFile at: 'messageID');	
		uid: (jsonFile at: 'uid');
		yourself