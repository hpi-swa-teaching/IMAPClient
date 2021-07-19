accessing
testDeleteEmailOffline
	
	self email folder childFolders add: self trashFolder.
	
	self assert: (self endPoint connectionHandler storedCommands isEmptyFor:  self endPoint accountInfo username).	
	
	self endPoint deleteEmail: self email.
	
	self deny: (self endPoint connectionHandler storedCommands isEmptyFor:  self endPoint accountInfo username).
	self deny: (self endPoint movedMailStorage isEmptyFor: self endPoint accountInfo username).
	self assert: self email folder folderName equals: self endPoint folderNameOfTrash