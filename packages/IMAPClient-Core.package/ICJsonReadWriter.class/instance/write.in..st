as yet unclassified
write: anICEmail in: aFolder

	| filestream jsonFile files |

	jsonFile := JsonObject newFrom: {
		'header' -> (self createJsonHeaderFrom: anICEmail header). 
		'body' -> anICEmail body.
		'messageID' -> anICEmail messageID}.
	
	
	"filestream := FileStream readOnlyFileNamed: 'Maildir', FileDirectory slash, (files at: 2) asString."

	"jsonFile := Json readFrom: filestream."
	
	^ jsonFile