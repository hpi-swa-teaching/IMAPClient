accessing
initializedAccounts

	^ initializedAccounts ifNil: [initializedAccounts := OrderedCollection new]