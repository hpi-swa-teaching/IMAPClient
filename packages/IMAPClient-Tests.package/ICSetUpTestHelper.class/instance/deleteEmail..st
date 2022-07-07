io
deleteEmail: anICEmail

	| filePath |
	filePath:= self endpoint maildirFileName: anICEmail folderName.
	FileDirectory default / filePath
		deleteFileNamed: anICEmail uniqueID
		ifAbsent: [CannotDeleteFileException new
			messageText: 'file not found: ' , filePath,'/', anICEmail uniqueID]