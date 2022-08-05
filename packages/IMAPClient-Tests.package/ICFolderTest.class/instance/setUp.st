running
setUp

	self helper: ICSetUpTestHelper new.
	self helper endpoint readWriter: (ICFileReadWriter new endpoint: self helper endpoint).
	self root: self helper endpoint rootFolder