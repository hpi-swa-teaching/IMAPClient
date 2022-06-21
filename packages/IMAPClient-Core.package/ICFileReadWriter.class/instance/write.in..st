write file
write: anICEmail in: anICFolder

	| folderPath |
	folderPath:= self endpoint maildirFileName: anICFolder folderName.

	(FileDirectory default / folderPath) assureExistence.
	
	FileStream
		forceNewFileNamed: folderPath, FileDirectory slash, anICEmail uniqueID
		do: [:stream |
			stream
				nextPutAll: anICEmail serializeToJson;
				flush;
				close]