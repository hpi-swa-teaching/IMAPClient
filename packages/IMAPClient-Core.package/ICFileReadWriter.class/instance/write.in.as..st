write file
write: anICEmail in: aFolder as: aString

	| jsonFile renderedJson fileDirectory subDir |
	jsonFile := JsonObject newFrom: {
		'header' -> (self createJsonHeaderFrom: anICEmail header). 
		'body' -> anICEmail body.
		'messageID' -> anICEmail messageID.
		'uid' -> anICEmail uid}.
	
	fileDirectory := (FileDirectory startUp; default).	
	subDir := ((aFolder subStrings: (FileDirectory slash)) allButLast) joinSeparatedBy: (FileDirectory slash). 
	
	 (fileDirectory directoryExists: subDir)
		ifFalse: [ fileDirectory createDirectory: subDir].
	 (fileDirectory directoryExists: aFolder)
		ifFalse: [ fileDirectory createDirectory: aFolder].
		
	renderedJson := Json render: jsonFile.
	FileStream forceNewFileNamed: (aFolder, FileDirectory slash, aString) do:
		[:stream | stream nextPutAll: renderedJson; flush; close]