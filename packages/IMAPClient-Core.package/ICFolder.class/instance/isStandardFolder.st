accessing
isStandardFolder

	^ (self endpoint folderNameOfTrash = self folderName)
	or: [self endpoint folderNameOfDrafts = self folderName]
