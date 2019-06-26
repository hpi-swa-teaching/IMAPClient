parser managment
parse: aStream
	
	self reader: aStream.
	
	[reader atEnd] whileFalse: [self parseMail].
	^ self emails