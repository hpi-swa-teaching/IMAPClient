folder selection
folderListMenu

	| aMenu folders |
	
	aMenu := MenuMorph new.
	folders := self rootFolder recursiveChildFolders.

	folders allButFirst do: [:each | 
		aMenu 
			add: (self folderNameOf: each) 
			action: [self moveEmail: (each path)]].
		
	^ aMenu