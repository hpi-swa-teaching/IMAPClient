toolbuilder
folderListMenuForFolders: anOrderedCollection

	| aMenu numberOfEntries |
	aMenu := MenuMorph new.
	numberOfEntries := {anOrderedCollection size. self itemsPerMoveMenu asNumber} min.
	
	numberOfEntries timesRepeat: [self addFolder: anOrderedCollection removeFirst toMenu: aMenu].
	anOrderedCollection isEmpty ifFalse: [aMenu add: 'More ...' subMenu: (self folderListMenuForFolders: anOrderedCollection)].
	
	^ aMenu