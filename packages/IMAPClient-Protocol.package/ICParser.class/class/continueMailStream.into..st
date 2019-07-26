parsing
continueMailStream: aStream into: anEmailStringCollection

	| id |

	id := self readMessageIdFromStream: aStream. 
	anEmailStringCollection at: id put: (String streamContents: [:email |
		self extractEmailContentFrom: aStream for: email])