updateEmails
update: aBlock
	
	ProgressNotification 
		signal: (aBlock value) 
		extra: (self endpoint accountInfo accountName, ' Mailbox. Folder: ', self folderName).
	
	self startUpdateProcess: self highestUniqueID.
	self childFolders do: [:anICFolder | anICFolder update: aBlock]