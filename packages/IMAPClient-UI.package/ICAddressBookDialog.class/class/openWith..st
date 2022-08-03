instance creation
openWith: anEmailAccountCollection

	^ ToolBuilder default open: (self basicNew
		emailAccounts: anEmailAccountCollection;
		initializeEmailAddresses;
		yourself)