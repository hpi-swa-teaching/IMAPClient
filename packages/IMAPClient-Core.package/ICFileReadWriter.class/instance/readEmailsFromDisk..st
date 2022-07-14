read file
readEmailsFromDisk: aDosFileDirectory

	aDosFileDirectory
		assureExistence;
		withAllFilesDo: self fileVisitor andDirectoriesDo: self directoryVisitor