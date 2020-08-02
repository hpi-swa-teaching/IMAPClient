action - update emails
updateAndShowProgressWith: aBlock
	
	ProgressNotification 
		signal: (aBlock value) 
		extra: (self accountName, ' Mailbox. Folder: ', self folderName).
	
	self startUpdateProcess: self highestUniqueID.
	self childFolders do: [:anICFolder | anICFolder updateAndShowProgressWith: aBlock]