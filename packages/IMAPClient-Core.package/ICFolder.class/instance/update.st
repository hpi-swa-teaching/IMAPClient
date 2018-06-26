updateEmails
update
	
	[self startUpdateProcess: self getHighestUID] on: Error do: [:e | Transcript show: e; cr].
	self childFolders do: [:anICFolder | anICFolder update]