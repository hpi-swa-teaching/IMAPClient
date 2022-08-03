instance creation
openWith: anEmailAccountCollection

	^ ToolBuilder default open: (self new
		emailAccounts: anEmailAccountCollection;
		yourself)