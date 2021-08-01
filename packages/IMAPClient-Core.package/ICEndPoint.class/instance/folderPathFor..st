storage
folderPathFor: responseLine
	
	| folder namePart |
	
	namePart := (responseLine copyAfter: ICCommand protocolQuote asCharacter).
	folder := ICParser parseFolderPathFrom: namePart.
	self hierarchyDelimiter: folder hierarchyDelimiter.
	
	^ folder pathAsArray
	