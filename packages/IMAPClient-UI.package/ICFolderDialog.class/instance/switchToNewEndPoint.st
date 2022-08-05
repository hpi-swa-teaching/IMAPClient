accountManagement
switchToNewEndPoint

	self selectedEndPoint ifNil: [^ self].
	self rootFolder: self selectedEndPoint rootFolder.
	self selectedFolder: nil.
	
	self
		changed: #shownTopLevelFolders;
		changed: #emailOfSelectedFolder