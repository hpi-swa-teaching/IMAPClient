updateEmails
update
	
	[self startUpdateProcess: self getHighestUID] on: Error do: [:e | Transcript show: e].
	self childFolders do: [:anICFolder | anICFolder update]