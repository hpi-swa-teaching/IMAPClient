write file
write: anICEmail
	
	(FileDirectory default / anICEmail maildirFileName) assureExistence.
		
	FileStream forceNewFileNamed: (anICEmail maildirFileName, FileDirectory slash, anICEmail uniqueID) do:
		[ :stream | stream nextPutAll: anICEmail serializeToJson; flush; close ]