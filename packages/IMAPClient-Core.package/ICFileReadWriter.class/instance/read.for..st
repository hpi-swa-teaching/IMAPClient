read file
read: aFile for: anICFolder

	anICFolder setFrom: (Json readFrom: aFile).
	anICFolder isTrashFolder ifTrue: [self endPoint folderNameOfTrash: anICFolder folderName]