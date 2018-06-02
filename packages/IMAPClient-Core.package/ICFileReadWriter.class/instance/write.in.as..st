write file
write: anICEmail in: aFolder as: aString
	| jsonFile renderedJson fileDirectory |

	jsonFile := JsonObject newFrom: {
		'header' -> (self createJsonHeaderFrom: anICEmail header). 
		'body' -> anICEmail body.
		'messageID' -> anICEmail messageID.
		'uid' -> anICEmail uid}.
	
	fileDirectory := FileDirectory default.	
	self createPathRecursive: aFolder and: fileDirectory.	
				
	renderedJson := Json render: jsonFile.
	FileStream forceNewFileNamed: (aFolder, FileDirectory slash, aString) do:
		[ :stream | stream nextPutAll: renderedJson; flush; close ]