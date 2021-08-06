accessing
rootDirectoryName
	
	^ (SecureHashAlgorithm new 
		hashMessage: self accountInfo host, self accountInfo username) 
			asString first: self class accountFolderHashRelevantCharacters