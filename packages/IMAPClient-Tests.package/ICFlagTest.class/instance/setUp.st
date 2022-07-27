running
setUp

	self helper: ICSetUpTestHelper new.
	
	self
		folder: (self helper createAFolder: 'folder');
		emails: OrderedCollection new.
	self emails addAll: (self helper createNumberOfEmails: 2 in: self folder)