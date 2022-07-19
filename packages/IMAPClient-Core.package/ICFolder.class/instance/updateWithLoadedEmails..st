action - update emails
updateWithLoadedEmails: anOrderedCollection

	self endpoint sendNextCommands.
	self endpoint isCommandStorageEmpty ifTrue: [
		self startUpdateProcess: self highestUniqueID loadedEmails: anOrderedCollection.
		self childFolders do: [:anICFolder | anICFolder updateWithLoadedEmails: anOrderedCollection]]