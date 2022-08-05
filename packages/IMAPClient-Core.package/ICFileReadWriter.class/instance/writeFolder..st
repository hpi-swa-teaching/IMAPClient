write file
writeFolder: anICFolder

	| maildirFileName |
	maildirFileName := self endPoint maildirFileName: anICFolder folderName.
	(FileDirectory default / maildirFileName) assureExistence.
	FileStream
		forceNewFileNamed: maildirFileName, FileDirectory slash, self class folderInfosFileName
		do: [:stream |
			stream
				nextPutAll: anICFolder serializeToJson;
				flush;
				close].
	^ anICFolder