toolbuilder
folderListMenu

	| aMenu aSubMenu folders itemsPerSubmenu currentMenu|
	itemsPerSubmenu := 5.
	aMenu := MenuMorph new.
	folders := self rootFolder recursiveChildFolders.
	currentMenu := aMenu.
	
	[folders size > itemsPerSubmenu] whileTrue: [
		
		aSubMenu := MenuMorph new.
		currentMenu add: 'More ...' subMenu: aSubMenu.
		itemsPerSubmenu timesRepeat: [
			
			currentMenu add: (self folderNameOf: folders removeFirst)  action: []].
		currentMenu := aSubMenu.
		].
	
	"folders
		reject: [:each | each = self selectedFolder]
		thenDo: [:each | aMenu add: (self folderNameOf: each) action: [self moveEmail: each path]]."

	
	^ aMenu