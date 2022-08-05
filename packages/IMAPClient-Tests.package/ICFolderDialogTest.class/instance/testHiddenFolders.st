testing
testHiddenFolders

	self folderDialog selectedEndPoint: self folderDialog emailAccounts first.
	self
		assert: (self folderDialog shownTopLevelFolders collect: [:aFolder | aFolder folderName])
		equals: ICMockFolderDialog testFolderNames.
	
	self folderDialog selectedEndPoint accountSettings notSyncedFolders: {ICMockFolderDialog testFolderNames second}.
	self
		assert: (self folderDialog shownTopLevelFolders collect: [:aFolder | aFolder folderName])
		equals: {ICMockFolderDialog testFolderNames first. ICMockFolderDialog testFolderNames third} asOrderedCollection.
	
	self folderDialog selectedEndPoint accountSettings notSyncedFolders: ICMockFolderDialog testFolderNames.
	self assert: (self folderDialog shownTopLevelFolders collect: [:aFolder | aFolder folderName]) isEmpty.
	
	self folderDialog selectedEndPoint accountSettings notSyncedFolders: {}.
	self
		assert: (self folderDialog shownTopLevelFolders collect: [:aFolder | aFolder folderName])
		equals: ICMockFolderDialog testFolderNames