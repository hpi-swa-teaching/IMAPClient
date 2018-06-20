updateEmails
update

	self childFolders do: [:anICFolder | anICFolder update].
	[self startUpdateProcess: self getHighestUID] on: Error do: [:e | Transcript show: e]