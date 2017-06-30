write file
write: anICEmail in: aFolder as: aString

	| jsonFile stream renderedJson |
	jsonFile := JsonObject newFrom: {
		'header' -> (self createJsonHeaderFrom: anICEmail header). 
		'body' -> anICEmail body.
		'messageID' -> anICEmail messageID}.
	
	renderedJson := Json render: jsonFile.
	stream := FileStream forceNewFileNamed: (aFolder, FileDirectory slash, aString).
	stream 
		nextPutAll: renderedJson;
		flush;
		close.