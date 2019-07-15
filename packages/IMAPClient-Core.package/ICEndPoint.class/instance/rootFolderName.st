accessing
rootFolderName

	"the account is saved with a hashed name, because otherwise problems with
	 special tokens like @ or spaces in server-host or username could occur"
	
	^ ICHelper hashNameForAccount: (self accountInfo host) and: (self accountInfo username)