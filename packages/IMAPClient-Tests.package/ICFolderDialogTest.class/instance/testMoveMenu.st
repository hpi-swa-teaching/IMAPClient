testing
testMoveMenu

	| rootfolder menu |
	rootfolder := ICFolder new.
	3 timesRepeat: [rootfolder addFolder: ICFolder new].
	self folderDialog rootFolder: rootfolder.
	menu := self folderDialog folderListMenu.
	self assert: menu items size <= (self folderDialog itemsPerMoveMenu + 1)