io
writeEmailOnDisk: anICEmail

	| folderPath |
	folderPath:= self endpoint maildirFileName:  anICEmail folderName.

	(FileDirectory default / folderPath) assureExistence.
	

	(FileDirectory default / folderPath) assureExistence.
	
	FileStream
		forceNewFileNamed: folderPath, FileDirectory slash, anICEmail uniqueID
		do: [:stream |
			stream
				nextPutAll: anICEmail serializeToJson;
				flush;
				close].
			
	^ anICEmail