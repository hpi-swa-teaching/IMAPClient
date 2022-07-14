synchronize
syncFromDisk

	self loadedEmails: self endpoint collectAllEmails.
	self loadedFolders: self endpoint collectAllFolders.
	self endpoint unlinkAllEmails.
	self directoryToFolderDictionaryReset.
	self readEmailsFromDisk.
	self loadedEmails: OrderedCollection new.
	self loadedFolders: OrderedCollection new.