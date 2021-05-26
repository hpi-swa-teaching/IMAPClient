accountManagement
passwordPromtCallback: anAccountInfo
	
	| nextAccount |
	self initializedAccounts add: anAccountInfo.
	
	nextAccount := self uninitializedAccounts findFirst: [:account | 
		(account accountName) = (anAccountInfo accountName)].
	self uninitializedAccounts removeAt: nextAccount.
	
	(self uninitializedAccounts isEmpty) 
		ifTrue: [self accountsComplete]
		ifFalse: [ICPasswordDialog openWith: (self uninitializedAccounts first) and: self]