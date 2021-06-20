read file
readFoldersFromDisk
	
	self rootDirectory
			assureExistence; 
			withAllFilesDo: [] andDirectoriesDo: self directoryVisitor