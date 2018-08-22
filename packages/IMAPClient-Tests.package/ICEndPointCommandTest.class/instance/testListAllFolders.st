logout
testListAllFolders

	self endPoint stream server responses: self endPoint stream server authenticatedResponses.
	self endPoint listAllFolders.
	self assert: self endPoint rootFolder countFolders equals: 7