as yet unclassified
login

	self data at: 'password' put: (self password).
	self folderDialogInstance addPasswordToCollection: (self data).
	self window abandon