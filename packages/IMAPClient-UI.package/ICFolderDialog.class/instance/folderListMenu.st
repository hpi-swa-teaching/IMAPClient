folder selection
folderListMenu

	| aMenu |
	aMenu := MenuMorph new.
	self childFolders do: [ :each | 
		aMenu add: (self folderNameOf: each) action: [self moveEmail: (self folderNameOf: each)]].
	^aMenu	