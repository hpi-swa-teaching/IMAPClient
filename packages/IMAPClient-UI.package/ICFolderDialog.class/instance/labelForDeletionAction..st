flags
labelForDeletionAction: aFolderName
	(aFolderName = 'Trash')
		ifTrue: [^ 'Clear Folder']
		ifFalse: [^ 'Move to trash']