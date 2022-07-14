toolbuilder
addFolder: aFolder toMenu: aMenu

	aMenu add: (self folderNameOf: aFolder) action: [self moveEmail: aFolder path]