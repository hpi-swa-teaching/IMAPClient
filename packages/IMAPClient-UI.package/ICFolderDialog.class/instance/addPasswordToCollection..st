as yet unclassified
addPasswordToCollection: aDictionary
	
	| found |
		
	self initializedAccounts add: aDictionary.
	
	"delete initializedAccount from uninitializedAccounts"
	found := self uninitializedAccounts findFirst: [ :account | (account at: 'name') = (aDictionary at: 'name')].
	self uninitializedAccounts removeAt: found.
	
	(uninitializedAccounts isEmpty) 
		ifTrue: [self accountsComplete]
		ifFalse: [ICPasswordPrompt openWith: (self uninitializedAccounts first) and: self]
