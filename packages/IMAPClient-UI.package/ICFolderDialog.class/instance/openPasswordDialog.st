action - emails
openPasswordDialog

	self passwordDialog ifNotNil: [:dialog | dialog abandon].
	self passwordDialog: (ICInputDialog open: self onCallback: #loginWithPassword:)