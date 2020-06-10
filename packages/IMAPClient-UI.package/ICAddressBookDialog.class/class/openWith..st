instance creation
openWith: anEmailAccountCollection
	
	^ ToolBuilder default open: (self basicNew
		emailAccounts: anEmailAccountCollection;
		initializeMailEmailAddresses;
		yourself)