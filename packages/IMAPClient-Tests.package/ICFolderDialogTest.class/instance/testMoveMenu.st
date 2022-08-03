testing
testMoveMenu

	| rootfolder menu lastItem |
	rootfolder := ICFolder new.
	3 * self folderDialog itemsPerMoveMenu timesRepeat: [rootfolder addFolder: (ICFolder new folderName: 'testName')].
	self folderDialog rootFolder: rootfolder.
	menu := self folderDialog folderListMenu.
	self assert: menu items size equals: self folderDialog itemsPerMoveMenu + 1.
	lastItem := menu items last.
	self assert: lastItem contents equals: 'More ...'.
	self assert: lastItem subMenu items size equals: self folderDialog itemsPerMoveMenu + 1