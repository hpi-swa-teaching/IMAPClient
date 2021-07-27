testing
testDeleteEmailOffline
	
	self email folder childFolders add: self trashFolder.
	
	self assert: (self endPoint connectionHandler storedCommands isEmptyFor:  self endPoint accountName).	
	
	self endPoint deleteEmail: self email.
	
	self deny: (self endPoint connectionHandler storedCommands isEmptyFor:  self endPoint accountName).
	self deny: (self endPoint movedMailStorage isEmptyFor: self endPoint accountName).
	self assert: self email folder folderName equals: self endPoint folderNameOfTrash