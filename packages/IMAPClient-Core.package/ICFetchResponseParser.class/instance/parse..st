parser managment
parse: aStream
	
	[reader := aStream.
	"try to parse one mail after another"
	[reader atEnd] whileFalse: [self parseMail].
	^ self emails] 
		on: Error 
		do: [:parsingError |self inform: parsingError asString]