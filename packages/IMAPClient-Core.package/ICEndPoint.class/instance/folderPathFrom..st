protocol parse
folderPathFrom: responseLine

	| response splittedResponse |
	
	response := responseLine copyReplaceAll: self class protocolQuote with: String empty.	
	splittedResponse := response subStrings: self class protocolBlank.	
	self hierarchyDelimiter: splittedResponse first.
	
	^ splittedResponse last subStrings: splittedResponse first