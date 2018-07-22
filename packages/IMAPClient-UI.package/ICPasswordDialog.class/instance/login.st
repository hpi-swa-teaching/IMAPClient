as yet unclassified
login

	self data at: 'password' put: (self password).
	
	((ICEndPoint new) testAccountWith: data)
		ifTrue: [
			self folderDialogInstance addPasswordToCollection: (self data).
			self window abandon]