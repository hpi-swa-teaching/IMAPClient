action - update emails
updateWithLoadedEmails: anOrderedCollection showProgress: aBoolean with: aBlock 
	| successful |
	successful := false.
	self endpoint sendNextCommands.
	self endpoint isCommandStorageEmpty
		ifTrue: [aBoolean
				ifTrue: [self showProgress: aBlock].
			successful := self updateLoadedEmails: anOrderedCollection.
			self childFolders
				do: [:anICFolder | successful := successful
								and: (anICFolder
										updateWithLoadedEmails: anOrderedCollection
										showProgress: aBoolean
										with: aBlock)]].
	^ successful