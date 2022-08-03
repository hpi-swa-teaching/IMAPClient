toolbuilder
folderTreeMenu: aMenu

	self selectedFolder ifNil: [^ aMenu].
	aMenu add: 'sync folder' action: #syncFolder.
	self selectedFolder isTrashFolder
		ifTrue: [aMenu add: 'empty trash' action: #expungeSelectedFolder];
		ifFalse: [aMenu add: 'move mails to trash' action: #deleteEmailsFromFolder].
	
	^ aMenu