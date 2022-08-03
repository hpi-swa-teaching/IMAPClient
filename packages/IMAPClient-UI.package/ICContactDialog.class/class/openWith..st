instance creation
openWith: anAdressBookDialog

	^ ToolBuilder default open: (self new initializeWith: anAdressBookDialog)