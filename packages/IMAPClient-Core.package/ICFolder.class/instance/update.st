updateEmails
update

	self startUpdateProcess: self getHighestUniqueID.	
	self childFolders do: [:anICFolder | anICFolder update]