accessing
rootDirectoryName
	
	^ (SecureHashAlgorithm new 
		hashMessage: self host, self username) 
			asString first: self class accountFolderHashRelevantCharacters