action - update emails
startUpdateWithLoadedEmails: anOrderedCollection showProgress: aBoolean with: aBlock except: aFolderCollection

	| successful |
	successful := self
		updateWithLoadedEmails: anOrderedCollection
		showProgress: aBoolean
		with: aBlock
		except: aFolderCollection.
	self executeFileCommands.
	self syncOnDisk.
	^ successful