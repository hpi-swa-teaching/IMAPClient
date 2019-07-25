parsing
folderPathFrom: aResponseString

	| response splittedResponse folderName hierarchyDelimiter |

	response := aResponseString copyReplaceAll: ICCommand protocolQuote with: String empty.	
	splittedResponse := response subStrings: ICCommand protocolBlank.	
	hierarchyDelimiter := splittedResponse first.
	folderName := splittedResponse allButFirst joinSeparatedBy: ' '.
	
	^ ICProtocolFolder newWithPath: folderName delimitedBy: hierarchyDelimiter