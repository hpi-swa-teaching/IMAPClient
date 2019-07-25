protocol parse
folderPathFrom: responseLine

	| response splittedResponse folderName |

	response := responseLine copyReplaceAll: ICCommand protocolQuote with: String empty.	
	splittedResponse := response subStrings: ICCommand protocolBlank.	
	self hierarchyDelimiter: splittedResponse first.
	folderName := splittedResponse allButFirst joinSeparatedBy: ' '.
	
	^ folderName subStrings: self hierarchyDelimiter