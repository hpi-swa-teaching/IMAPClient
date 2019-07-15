parsing
folderPathFrom: aResponseString

	| response splittedResponse folderName hierarchyDelimiter |

	response := aResponseString copyReplaceAll: self protocolQuote with: String empty.	
	splittedResponse := response subStrings: self protocolBlank.	
	hierarchyDelimiter := splittedResponse first.
	folderName := splittedResponse allButFirst joinSeparatedBy: ' '.
	
	^ ICProtocolFolder newWithPath: folderName delimitedBy: hierarchyDelimiter