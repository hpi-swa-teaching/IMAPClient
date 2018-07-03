updateEmails
update
	self name = 'root'
	ifFalse:[
		[self startUpdateProcess: self getHighestUID] on: Error do: [:e |self inform: e asString. self halt]].
	self childFolders do: [:anICFolder | anICFolder update]