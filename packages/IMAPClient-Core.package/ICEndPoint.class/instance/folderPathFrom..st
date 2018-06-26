protocol parse
folderPathFrom: responseLine

	| response splittedResponse folderName|
	
	response := responseLine copyReplaceAll: self class protocolQuote with: String empty.	
	splittedResponse := response subStrings: self class protocolBlank.	
	self hierarchyDelimiter: splittedResponse first.
	folderName := splittedResponse allButFirst joinSeparatedBy: ' '.
	
	^ folderName subStrings: self hierarchyDelimiter