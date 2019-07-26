accessing
rootFolderName
	
	^ (SecureHashAlgorithm new hashMessage: self accountInfo host, self accountInfo username) asString first: 10