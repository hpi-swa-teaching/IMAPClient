as yet unclassified
isSpecialFolder

	^ (self isSentFolder) 
	or: [self isDraftsFolder]
	or: [self isInboxFolder]
	or: [self isJunkFolder]
	or: [self isTrashFolder]
	or: [self isOutboxFolder]