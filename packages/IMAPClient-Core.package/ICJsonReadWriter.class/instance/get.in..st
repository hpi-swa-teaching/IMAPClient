as yet unclassified
get: aFile in: aFolder

	| filestream jsonFile email |

	email := ICEmail new.
	filestream := FileStream readOnlyFileNamed: aFolder, FileDirectory slash, aFile asString.
	jsonFile := Json readFrom: filestream.
	
	email 
		header: (self createHeaderFrom: (jsonFile at: 'header'));
		body: (jsonFile at: 'body');
		messageID: (jsonFile at: 'messageID').
		
	^ email
	