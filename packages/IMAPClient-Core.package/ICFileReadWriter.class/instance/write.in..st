write file
write: anICEmail in: anICFolder

	| folderPath |
	folderPath:= self endpoint maildirFileName: anICFolder folderName.

	(FileDirectory default / folderPath) assureExistence.
	
	FileStream
		forceNewFileNamed: folderPath, FileDirectory slash, anICEmail id
		do: [:stream |
			stream
				nextPutAll: anICEmail serializeToJson;
				flush;
				close].
			
	ICFileCommandStorage new push: [self write: anICEmail in: anICFolder]