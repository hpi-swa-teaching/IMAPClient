toolbuilder
addFolder: aFolder toMenuAll: aMenu

	aMenu add: (self folderNameOf: aFolder) action: [self selectedFolder emails do: [:email | self moveEmail: email to: aFolder path]] 