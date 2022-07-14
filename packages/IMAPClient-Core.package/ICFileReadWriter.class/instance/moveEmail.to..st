write file
moveEmail: anICEmail to: anICFolder
	
	
	self write: anICEmail in: anICFolder.
	self delete: anICEmail.
	self sync: {anICEmail folder . anICFolder}
	
	