delete file
delete: anICEmail

	| filePath |
	filePath:= self endpoint maildirFileName: anICEmail folder folderName.
	FileDirectory default / filePath
		deleteFileNamed: anICEmail id
		ifAbsent: [CannotDeleteFileException new
			messageText: 'file not found: ' , filePath,FileDirectory slash, anICEmail id]