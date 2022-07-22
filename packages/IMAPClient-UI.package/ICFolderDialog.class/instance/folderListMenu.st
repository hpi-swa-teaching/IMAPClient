toolbuilder
folderListMenu

	| aMenu aSubMenu folders currentMenu |
	aMenu := MenuMorph new.
	folders := self rootFolder recursiveChildFolders reject: [:each | each = self selectedFolder or: [each = self rootFolder]].
	currentMenu := aMenu.
	
	[folders size > self itemsPerMoveMenu] whileTrue: [
		aSubMenu := MenuMorph new.
		currentMenu add: 'More ...' subMenu: aSubMenu.
		self itemsPerMoveMenu timesRepeat: [self addFolder: folders removeFirst toMenu: currentMenu].
		currentMenu := aSubMenu].
	[folders isEmpty] whileFalse: [self addFolder: folders removeFirst toMenu: currentMenu].
	
	^ aMenu