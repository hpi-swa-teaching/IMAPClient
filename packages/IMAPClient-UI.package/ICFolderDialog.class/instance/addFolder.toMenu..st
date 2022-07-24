toolbuilder
addFolder: aFolder toMenu: aMenu

	aMenu add: aFolder folderName action: [self moveEmail: aFolder path]