initialization
initialize 
	
	"get config data as credentials"
	
	| accounts |
	
	accounts := ICConnectionHandler connectionConfigurations.	
			
	self uninitializedAccounts: accounts. 
	self initializedAccounts: OrderedCollection new.
	
	(self uninitializedAccounts) 
		ifEmpty: [self accountsComplete]
		ifNotEmpty: [ICPasswordDialog openWith: (self uninitializedAccounts first) and: self]