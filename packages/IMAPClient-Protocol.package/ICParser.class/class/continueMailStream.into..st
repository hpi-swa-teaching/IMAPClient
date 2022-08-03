parsing
continueMailStream: aStream into: anEmailStringCollection

	anEmailStringCollection
		at: (self readMessageIdFromStream: aStream)
		put: (String streamContents: [:email | self extractEmailContentFrom: aStream for: email])