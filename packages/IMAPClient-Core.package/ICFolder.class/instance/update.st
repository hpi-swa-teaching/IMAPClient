action - update emails
update
	self endpoint sendNextCommands.
	(self endpoint isCommandStorageEmpty) ifTrue:
		[self startUpdateProcess: self highestUniqueID.	
		self childFolders do: [:anICFolder | anICFolder update]]