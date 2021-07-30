toolbuilder
folderListMenu

	| aMenu folders |
	
	aMenu := MenuMorph new.
	folders := self rootFolder recursiveChildFolders.

	folders reject: [:each | each = self selectedFolder]
		     thenDo: [:each | 
				aMenu 
					add: (self folderNameOf: each) 
					action: [self moveEmail: (each path)]].
		
	^ aMenu