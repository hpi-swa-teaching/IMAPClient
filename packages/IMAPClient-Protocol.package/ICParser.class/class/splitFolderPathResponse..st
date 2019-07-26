parsing
splitFolderPathResponse: aResponseString

	^ (aResponseString copyReplaceAll: ICCommand protocolQuote with: String empty)
		subStrings: ICCommand protocolBlank