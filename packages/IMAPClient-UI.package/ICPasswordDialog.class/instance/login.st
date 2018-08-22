as yet unclassified
login

	(self password = nil)
		ifTrue: [
			UserDialogBoxMorph inform: 'Please put in a password' title: ''.
			^ self].
 
	self data at: 'password' put: (self password).
 
	((ICEndPoint new) testAccountWith: data)
		ifTrue: [
			self folderDialogInstance addPasswordToCollection: (self data).
			self window abandon]