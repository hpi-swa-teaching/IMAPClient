fetching
getRootFolderName
	
	^ (SecureHashAlgorithm new hashMessage: (self serverInfo host, self authenticationInfo username)) asString first: 10