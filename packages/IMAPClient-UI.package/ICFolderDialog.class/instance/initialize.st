initialization
initialize 
	
	"get config data as credentials"
	self uninitializedAccounts: ICHelper loadCredentialsIntoDictionaries.
	
	(self uninitializedAccounts) 
		ifEmpty: [self accountsComplete]
		ifNotEmpty: [ICPasswordDialog openWith: (self uninitializedAccounts first) and: self]