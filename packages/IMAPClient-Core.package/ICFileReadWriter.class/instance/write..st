write file
write: anICEmail
	
	(FileDirectory default / self endpoint maildirFileName) assureExistence.
		
	FileStream 
		forceNewFileNamed: (self endpoint maildirFileName, FileDirectory slash, anICEmail uniqueID) 
		do: [:stream | 
			stream nextPutAll: anICEmail 
				serializeToJson; 
				flush; 
				close]