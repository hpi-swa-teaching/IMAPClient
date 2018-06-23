as yet unclassified
labelForDeletionAction: aFolderName
	(aFolderName = 'Trash')
		ifTrue: [^ 'Clear Folder']
		ifFalse: [^ 'Move to trash']