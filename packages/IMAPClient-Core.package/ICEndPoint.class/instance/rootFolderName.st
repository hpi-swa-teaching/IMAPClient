accessing
rootFolderName

	"the account is saved with a hashed name, because otherwise problems with
	 special tokens like @ or spaces in server-host or username could occur"
	
	^ (SecureHashAlgorithm new hashMessage: self accountInfo host, self accountInfo username) asString first: 10