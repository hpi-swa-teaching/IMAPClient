as yet unclassified
write: anICEmail in: aFolder

	| jsonFile stream renderedJson |
	jsonFile := JsonObject newFrom: {
		'header' -> (self createJsonHeaderFrom: anICEmail header). 
		'body' -> anICEmail body.
		'messageID' -> anICEmail messageID}.
	
	
	"filestream := FileStream readOnlyFileNamed: 'Maildir', FileDirectory slash, (files at: 2) asString."

	"jsonFile := Json readFrom: filestream."
	
	renderedJson := Json render: jsonFile.
	Transcript show: renderedJson.
	"stream := FileSystem allInstancesDo: [ :x | x writeStreamOn: ('Maildir/mail2') asFileName ].
	stream := 'newFile' asFileName writeStream.
	stream := FileStream new open: 'mail2' forWrite: true.
	stream nextPutAll: renderedJson.
	stream close."