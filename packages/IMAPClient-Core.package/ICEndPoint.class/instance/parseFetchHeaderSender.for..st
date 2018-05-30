protocol parse
parseFetchHeaderSender: aHeaderChunk for: anEmail

	| sender |
	sender := ((aHeaderChunk collect: [ :each | each]) joinSeparatedBy: ' ').
	sender := (sender subStrings: ':') allButFirst joinSeparatedBy: ':'.
	anEmail from: sender withBlanksTrimmed 

	