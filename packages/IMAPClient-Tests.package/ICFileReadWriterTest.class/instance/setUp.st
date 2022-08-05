setup
setUp

	self helper: ICSetUpTestHelper new.
	self readWriter: (ICFileReadWriter newWith: self helper endPoint)