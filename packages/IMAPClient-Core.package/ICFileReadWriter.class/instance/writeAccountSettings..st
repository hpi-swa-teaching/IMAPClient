write file
writeAccountSettings: aJson

	self rootDirectory assureExistence.
	
	FileStream
		forceNewFileNamed: self rootDirectory pathName, FileDirectory slash, ICAccountSettings settingsFileName
		do: [:stream |
			stream
				nextPutAll: aJson;
				flush;
				close]