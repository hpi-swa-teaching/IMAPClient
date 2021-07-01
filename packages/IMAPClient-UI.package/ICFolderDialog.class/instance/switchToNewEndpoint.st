accountManagement
switchToNewEndpoint

	
	self selectedEndpoint ifNil: [^self].	
	"self folderWith: self selectedEndpoint."

	self rootFolder: self selectedEndpoint rootFolder.
	self selectedFolder: nil.
	
	self 
		changed: #childFolders;
		changed: #emailOfSelectedFolder.