running
setUp

	self helper: ICSetUpTestHelper new.
	self helper endPoint readWriter: (ICFileReadWriter new endPoint: self helper endPoint).
	self root: self helper endPoint rootFolder