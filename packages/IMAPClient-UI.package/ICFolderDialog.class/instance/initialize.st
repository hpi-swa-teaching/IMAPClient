initialization
initialize 
	
	"get config data as credentials"
	self uninitializedAccounts: ICEndPoint connectionConfigurations.
	
	(self uninitializedAccounts) 
		ifEmpty: [self accountsComplete]
		ifNotEmpty: [ICPasswordDialog openWith: (self uninitializedAccounts first) and: self]