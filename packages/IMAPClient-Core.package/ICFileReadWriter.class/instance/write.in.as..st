write file
write: anICEmail in: aFolder as: aString

	| json_object rendered_json directory |
	json_object := JsonObject newFrom: {
		'header' -> (self createJsonHeaderFrom: anICEmail header). 
		'body' -> anICEmail body.
		'messageID' -> anICEmail messageID.
		'uid' -> anICEmail uid}.
		
	directory := self createPathIfNotExisting: aFolder.
		
		
	rendered_json := Json render: json_object.
	(FileStream forceNewFileNamed: (directory fullNameFor: aString)) do:
		[ :stream | stream 
			nextPutAll: rendered_json; 
			flush; 
			close ]