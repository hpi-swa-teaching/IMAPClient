action - update emails
updateAndShowProgressWith: aBlock
	
	|successful|
	ProgressNotification 
		signal: (aBlock value) 
		extra: (self accountName, ' Mailbox. Folder: ', self folderName).
	
	successful := self startUpdateProcess: self highestUniqueID.
	self childFolders do: [:anICFolder | successful := successful and: (anICFolder updateAndShowProgressWith: aBlock)].
	^ successful