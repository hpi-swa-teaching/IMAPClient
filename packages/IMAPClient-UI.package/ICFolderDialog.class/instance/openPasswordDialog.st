action - emails
openPasswordDialog

	self passwordDialog ifNotNil: [:dialog | dialog abandon].
	self passwordDialog: (ICInputDialog open: self with: 'Input Password To Login' onCallback: #loginWithPassword:)