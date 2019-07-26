parsing
readOctetSizeFrom: aStream for: anEmailString

	anEmailString nextPutAll: (aStream nextDelimited: ${).
	^ (aStream nextDelimited: $}) asNumber