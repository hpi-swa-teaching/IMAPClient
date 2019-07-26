parsing
closeEmailContentFrom: aStream for: anEmailString

	anEmailString nextPutAll: (aStream nextDelimited: $)).
	aStream next