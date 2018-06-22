as yet unclassified
labelForDeletionAction: aFolderName
	(aFolderName = 'Trash')
		ifTrue: [^ 'Delete Email']
		ifFalse: [^ 'Move to trash']