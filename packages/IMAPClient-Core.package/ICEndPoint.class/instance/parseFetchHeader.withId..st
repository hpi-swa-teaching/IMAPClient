protocol parse
parseFetchHeader: headerLines withId: id
	| email headerData headerChunk |
	email := ICEmail new.
	email messageID: id.
	
		
	"the first one is just the imap command"
	headerData := (headerLines subStrings: {Character cr}).		
	headerChunk := OrderedCollection new.
	
	"this is necassery because one header fields could contains multiple lines..."
	headerData do: [ :line |
		(line includesSubString: 'UID')	
			ifTrue: [email uid: ((line subStrings: ' ') second)]
			ifFalse:[
				((self startsNewHeaderChunk: line) & (headerChunk notEmpty))
					ifTrue: [ 
						self parseHeaderChunk: headerChunk for: email.
						headerChunk removeAll.
					].
				headerChunk add: line
			]
	].

	self parseHeaderChunk: headerChunk for: email.

	^ email