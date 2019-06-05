folder selection
folderListMenu

	| aMenu folders |
	
	aMenu := MenuMorph new.
	folders := ICHelper allFolders: ((self rootFolder) asOrderedCollection).

	folders allButFirst do: [:each | 
		aMenu 
			add: (self folderNameOf: each) 
			action: [self moveEmail: (each path)]].
		
	^ aMenu