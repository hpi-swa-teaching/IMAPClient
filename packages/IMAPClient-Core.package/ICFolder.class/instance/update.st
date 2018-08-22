updateEmails
update

	self startUpdateProcess: self getHighestUID.	
	self childFolders do: [:anICFolder | anICFolder update]