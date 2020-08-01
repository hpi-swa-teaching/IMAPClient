action - emails
progressCallback

	| result |
	
	result := (1 / (self numberOfFolders)) * (self numberOfFetchedFolders).
	self numberOfFetchedFolders: (self numberOfFetchedFolders + 1).
	
	^ result