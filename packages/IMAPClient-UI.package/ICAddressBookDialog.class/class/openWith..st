instance creation
openWith: anEmailAccountCollection
	
	^ ToolBuilder default open: (self basicNew
		emailAccounts: anEmailAccountCollection;
		initialize;
		yourself)