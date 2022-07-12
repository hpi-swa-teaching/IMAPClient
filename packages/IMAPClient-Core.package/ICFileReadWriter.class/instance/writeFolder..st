write file
writeFolder: anICFolder

	| maildirFileName |
	maildirFileName := self endpoint maildirFileName: anICFolder folderName.
	(FileDirectory default / maildirFileName) assureExistence.
	FileStream forceNewFileNamed: maildirFileName, FileDirectory slash, self class folderInfosFileName do: [:stream |
		stream
			nextPutAll: anICFolder serializeToJson;
			flush;
			close].
	^ anICFolder