action - update emails
updateWithLoadedEmails: anOrderedCollection showProgress: aBoolean with: aBlock except: aFolderCollection 
	| successful |
	successful := false.
	self endpoint sendNextCommands.
	self endpoint isCommandStorageEmpty
		ifTrue: [aBoolean
				ifTrue: [self showProgress: aBlock].
			successful := self updateLoadedEmails: anOrderedCollection.
			self childFolders
				reject: [:anICFolder | aFolderCollection
						contains: [:aFolderName | aFolderName = anICFolder folderName]]
				thenDo: [:anICFolder | successful := successful
								and: (anICFolder
										updateWithLoadedEmails: anOrderedCollection
										showProgress: aBoolean
										with: aBlock
										except: aFolderCollection)]].
	^ successful