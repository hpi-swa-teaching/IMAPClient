accessing
getRootFolderName

	"this accounts are saved with a hashed name, because we could otherwise get problems with
	 special tokens like @ or spaces in server-host or username"
	
	^ ICHelper getHashNameForAccount: (self serverInfo host) and: (self authenticationInfo username)