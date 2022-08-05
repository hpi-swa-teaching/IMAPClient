synchronize
syncFromDisk

	self loadedEmails: self endPoint collectAllEmails.
	self loadedFolders: self endPoint collectAllFolders.
	self endPoint unlinkAllEmails.
	self directoryToFolderDictionaryReset.
	self readEmailsFromDisk.
	self resetLoadedObjects