updateEmails
update: aBlock
	
	ProgressNotification 
		signal: (aBlock value) 
		extra: (self endpoint name, ' Mailbox. Folder: ', self name).
	
	self startUpdateProcess: self getHighestUID.
	self childFolders do: [:anICFolder | anICFolder update: aBlock]