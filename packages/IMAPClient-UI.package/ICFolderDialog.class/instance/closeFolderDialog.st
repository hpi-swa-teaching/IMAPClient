connection
closeFolderDialog

	self closeConnection.
	self settingsDialogMorph ifNil: [^self ].
	self settingsDialogMorph abandon