parsing
parseFolderPathFrom: aResponseString

	| splittedResponse |

	splittedResponse := self splitFolderPathResponse: aResponseString.
	^ ICProtocolFolder
		newWithPath: (splittedResponse allButFirst joinSeparatedBy: ' ')
		delimitedBy: splittedResponse first