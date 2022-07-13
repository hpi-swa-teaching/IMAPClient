action - update emails
updateAndShowProgressWith: aBlock except: aFolderCollection

	| successful |
	successful := false.
	self endpoint sendNextCommands.
	self endpoint isCommandStorageEmpty ifTrue: [
		ProgressNotification
			signal: aBlock value
			extra: self accountName, ' Mailbox. Folder: ', self folderName.
		successful := self startUpdateProcess: self highestUniqueID.
		self childFolders reject: [:anICFolder | aFolderCollection contains: [:aFolderName | aFolderName = anICFolder folderName]] thenDo: [:anICFolder | successful := successful and: (anICFolder updateAndShowProgressWith: aBlock except: aFolderCollection)]].
	^ successful