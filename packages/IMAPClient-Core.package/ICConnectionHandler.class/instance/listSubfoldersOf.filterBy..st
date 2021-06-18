connection
listSubfoldersOf: aFolder filterBy: aFilter

	self sendCommand: (ICCommand listSubfoldersOf: aFolder filterBy: aFilter).