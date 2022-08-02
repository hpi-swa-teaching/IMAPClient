testing
testHiddenFolders

	self folderDialog selectedEndpoint: self folderDialog emailAccounts first.
	self assert: (self folderDialog shownTopLevelFolders collect: [:aFolder | aFolder folderName]) equals: ICMockFolderDialog testFolderNames.
	
	self folderDialog selectedEndpoint accountSettings notSyncedFolders: {ICMockFolderDialog testFolderNames second}.
	self assert: (self folderDialog shownTopLevelFolders collect: [:aFolder | aFolder folderName]) equals: {ICMockFolderDialog testFolderNames first . ICMockFolderDialog testFolderNames third} asOrderedCollection.
	
	self folderDialog selectedEndpoint accountSettings notSyncedFolders: ICMockFolderDialog testFolderNames.
	self assert: (self folderDialog shownTopLevelFolders collect: [:aFolder | aFolder folderName]) isEmpty.
	
	self folderDialog selectedEndpoint accountSettings notSyncedFolders: {}.
	self assert: (self folderDialog shownTopLevelFolders collect: [:aFolder | aFolder folderName]) equals: ICMockFolderDialog testFolderNames