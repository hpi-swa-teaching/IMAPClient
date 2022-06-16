connection
listSubfoldersOf: aFolder filterBy: aFilter

	self sendDirectCommand: (ICCommand listSubfoldersOf: aFolder filterBy: aFilter)