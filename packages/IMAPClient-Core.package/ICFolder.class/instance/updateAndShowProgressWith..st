action - update emails
updateAndShowProgressWith: aBlock
	
	| successful |
	successful := false.
	self endpoint sendNextCommands.
	(self endpoint isCommandStorageEmpty) ifTrue: [
		ProgressNotification 
			signal: (aBlock value) 
			extra: (self accountName, ' Mailbox. Folder: ', self folderName).
		successful := self startUpdateProcess: self highestUniqueID.
		self childFolders do: [:anICFolder | successful := successful and: (anICFolder updateAndShowProgressWith: aBlock)].].
	^ successful