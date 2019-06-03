updateEmails
update

	self startUpdateProcess: self highestUniqueID.	
	self childFolders do: [:anICFolder | anICFolder update]