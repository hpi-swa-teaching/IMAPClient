read file
readMailFromStream: aStream
		
	^ ICEmail newFrom: (Json readFrom: aStream)