as yet unclassified
initialize 
	
	"get config data as credentials"
	
	| accounts |
	
	accounts := ICHelper loadCredentialsIntoDictionaries.	
			
	self uninitializedAccounts: accounts. 
	self initializedAccounts: OrderedCollection new.
	
	(self uninitializedAccounts) 
		ifEmpty: [self accountsComplete]
		ifNotEmpty: [ICPasswordPrompt openWith: (self uninitializedAccounts first) and: self]