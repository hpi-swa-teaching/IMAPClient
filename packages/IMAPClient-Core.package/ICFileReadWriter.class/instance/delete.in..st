delete file
delete: anICEmail in: anICFolder

	| filePath |
	filePath:= self endpoint maildirFileName: anICFolder folderName.
	FileDirectory default / filePath
		deleteFileNamed: anICEmail id
		ifAbsent: [CannotDeleteFileException new
			messageText: 'file not found: ' , filePath,FileDirectory slash, anICEmail id].
		
	ICFileCommandStorage new push: [self delete: anICEmail in: anICFolder]