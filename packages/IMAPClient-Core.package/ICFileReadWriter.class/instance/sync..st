synchronize
sync: anICFolderCollection 
	anICFolderCollection
		do: [:folder | self loadedEmails addAll: folder emails].
	self loadedFolders: anICFolderCollection.
	anICFolderCollection
		do: [:folder | folder unlinkAllEmails].
	self directoryToFolderDictionaryReset.
	anICFolderCollection
		do: [:folder | self readEmailsFromDisk: self rootDirectory / folder path].
	self resetLoadedObjects