parsing
readMessageIdFromStream: aStream

	| id |

	aStream next: self lengthOfEmailPrefix.
	id := aStream nextDelimited: Character space.
	aStream next: self lengthOfFetchPrefix.
	
	^ id