accessing
testHiddenFolders

	self folderDialog selectedEndpoint: self folderDialog emailAccounts first.
	
	
	
	self folderDialog selectedEndpoint accountSettings notSyncedFolders: {'testFolder1'}.
	