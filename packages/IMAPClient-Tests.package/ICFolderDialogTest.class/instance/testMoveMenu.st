testing
testMoveMenu

	| rootfolder menu firstItem |
	rootfolder := ICFolder new.
	3 * self folderDialog itemsPerMoveMenu timesRepeat: [rootfolder addFolder: ICFolder new].
	self folderDialog rootFolder: rootfolder.
	menu := self folderDialog folderListMenu.
	self assert: menu items size equals: self folderDialog itemsPerMoveMenu + 1.
	firstItem := menu items first.
	self assert: firstItem contents equals: 'More ...'.
	self assert: firstItem subMenu items size equals: self folderDialog itemsPerMoveMenu + 1