read file
readEmailsFromDisk
	
	self rootDirectory
			assureExistence; 
			withAllFilesDo: self fileVisitor andDirectoriesDo: self directoryVisitor