fetching
getRootFolderName
	
	^ ICHelper getHashNameForAccount: (self serverInfo host)  and: (self authenticationInfo username)