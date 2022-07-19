action - update emails
updateAndShowProgressWith: aBlock loadedEmails: anOrderedCollection

	| successful |
	successful := false.
	self endpoint sendNextCommands.
	self endpoint isCommandStorageEmpty ifTrue: [
		ProgressNotification
			signal: aBlock value
			extra: self accountName, ' Mailbox. Folder: ', self folderName.
		successful := self startUpdateProcess: self highestUniqueID loadedEmails: anOrderedCollection.
		self childFolders do: [:anICFolder | successful := successful and: (anICFolder updateAndShowProgressWith: aBlock loadedEmails: anOrderedCollection)]].
	^ successful