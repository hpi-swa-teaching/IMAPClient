logout
testListAllFolders

	self endPoint connectionHandler stream server responses: self endPoint connectionHandler stream server authenticatedResponses.
	self endPoint listAllFolders.
	self assert: self endPoint rootFolder countFolders equals: 7