as yet unclassified
addPasswordToCollection: aDictionary
	
	| nextAccount |
		
	self initializedAccounts add: aDictionary.
	
	"delete initialized account from uninitializedAccounts"
	nextAccount := self uninitializedAccounts findFirst: [:account | 
		(account at: 'name') = (aDictionary at: 'name')].
	
	self uninitializedAccounts removeAt: nextAccount.
	
	(uninitializedAccounts isEmpty) 
		ifTrue: [self accountsComplete]
		ifFalse: [ICPasswordPrompt openWith: (self uninitializedAccounts first) and: self]
