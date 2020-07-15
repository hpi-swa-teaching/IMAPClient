delete file
delete: uniqueID in: maildirFileName

	FileDirectory default deleteFileNamed: (maildirFileName, FileDirectory slash, uniqueID)	