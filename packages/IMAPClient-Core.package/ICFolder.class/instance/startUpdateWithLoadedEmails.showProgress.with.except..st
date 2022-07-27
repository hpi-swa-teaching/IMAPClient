action - update emails
startUpdateWithLoadedEmails: anOrderedCollection showProgress: aBoolean with: aBlock except: aFolderCollection

	| successful |
	successful := self
		updateWithLoadedEmails: anOrderedCollection
		showProgress: aBoolean
		with: aBlock
		except: aFolderCollection.
	self executeFileCommands.
	self endpoint readWriter sync: (self isRootFolder
		ifTrue: [self collectAllChildFolders]
		ifFalse: [self collectAllFolders]).
	^ successful