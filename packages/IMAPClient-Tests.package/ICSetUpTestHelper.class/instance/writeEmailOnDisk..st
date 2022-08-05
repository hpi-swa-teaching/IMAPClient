io
writeEmailOnDisk: anICEmail

	| folderPath |
	folderPath := self endPoint maildirFileName: anICEmail folderName.
	
	(FileDirectory default / folderPath) assureExistence.
	
	FileStream forceNewFileNamed: folderPath, FileDirectory slash, anICEmail id do: [:stream |
		stream
			nextPutAll: anICEmail serializeToJson;
			flush;
			close].
	
	^ anICEmail