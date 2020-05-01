accountManagment
switchToNewEndpoint

	
	self selectedEndpoint ifNil: [^self].	
	self folderWith: self selectedEndpoint.
	
	self rootFolder: self selectedEndpoint rootFolder.
	self selectedFolder: nil.
	
	self triggerBasicChanges.
	self changed: #selectedEndpoint