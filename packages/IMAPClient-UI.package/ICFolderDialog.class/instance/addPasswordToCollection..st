accountManagment
addPasswordToCollection: aDictionary
	
	"this is the callback method for the ICPasswordPrompt"
	
	| nextAccount |
	
	self initializedAccounts add: aDictionary.
	
	"delete the newly initialized account from uninitializedAccounts"
	nextAccount := self uninitializedAccounts findFirst: [:account | 	(account at: 'accountName') = (aDictionary at: 'accountName')].
	self uninitializedAccounts removeAt: nextAccount.
	
	"if there are yet uninitializedAccounts, open a ICPasswordPrompt for them"
	(uninitializedAccounts isEmpty) 
		ifTrue: [self accountsComplete]
		ifFalse: [ICPasswordDialog openWith: (self uninitializedAccounts first) and: self]