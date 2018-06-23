accountManagment
addPasswordToCollection: aDictionary
	
	| nextAccount |

	"this is the callback method for the ICPasswordPrompt "
	
	self initializedAccounts add: aDictionary.
	
	"delete the newly initialized account from uninitializedAccounts"
	nextAccount := self uninitializedAccounts findFirst: [:account | 	(account at: 'name') = (aDictionary at: 'name')].
	self uninitializedAccounts removeAt: nextAccount.
	
	"if there are yet uninitializedAccounts, open a ICPasswordPrompt for them"
	(uninitializedAccounts isEmpty) 
		ifTrue: [self accountsComplete]
		ifFalse: [ICPasswordPrompt openWith: (self uninitializedAccounts first) and: self]
