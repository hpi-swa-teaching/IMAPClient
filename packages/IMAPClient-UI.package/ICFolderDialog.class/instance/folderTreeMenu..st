folder selection
folderTreeMenu: aMenu

	(self selectedFolder isTrashFolder) ifTrue: [
		aMenu add: 'empty trash'
				action: #expungeSelectedFolder].
		
	^ aMenu