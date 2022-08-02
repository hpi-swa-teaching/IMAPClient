logout
testListAllFolders

	self endpoint connectionHandler stream server responses: self endpoint connectionHandler stream server authenticatedResponses.
	self endpoint listAllFolders.
	self assert: self endpoint rootFolder countFolders equals: 7