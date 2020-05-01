accountManagment
passwordPromtCallback: aDictionary
	
	| nextAccount |
	
	self initializedAccounts add: aDictionary.
	
	nextAccount := self uninitializedAccounts findFirst: [:account | 
		(account at: 'accountName') = (aDictionary at: 'accountName')].
	self uninitializedAccounts removeAt: nextAccount.
	
	(self uninitializedAccounts isEmpty) 
		ifTrue: [self accountsComplete]
		ifFalse: [ICPasswordDialog openWith: (self uninitializedAccounts first) and: self]