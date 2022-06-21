delete file
delete: anICEmail

	| filePath |
	filePath:= self endpoint maildirFileName: anICEmail folder folderName.
	FileDirectory default / filePath
		deleteFileNamed: anICEmail uniqueID
		ifAbsent: [CannotDeleteFileException new
			messageText: 'file not found: ' , filePath,'/', anICEmail uniqueID]