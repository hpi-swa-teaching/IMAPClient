testing
testMoveMenu

	| menu rootfolder |
	rootfolder := ICFolder.
	3 timesRepeat: [rootfolder addFolder: ICFolder new].
	self folderDialog rootFolder: rootfolder.
	menu := self folderDialog folderListMenu.
	self assert: menu items size <= (self folderDialog itemsPerMoveMenu + 1)