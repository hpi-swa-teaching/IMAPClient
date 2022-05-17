accessing
isStandardFolder

	^ (self endpoint folderNameOfTrash = self folderName)
	or: [self endpoint folderNameOfDrafts = self folderName]
	or: [self endpoint folderNameOfSent = self folderName]
	or: [self endpoint folderNameOfJunk = self folderName]
	or: [self endpoint folderNameOfInbox = self folderName]