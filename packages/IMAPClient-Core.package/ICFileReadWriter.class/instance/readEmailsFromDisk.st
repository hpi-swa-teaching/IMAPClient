read file
readEmailsFromDisk

self halt.
	self rootDirectory
		assureExistence;
		withAllFilesDo: self fileVisitor andDirectoriesDo: self directoryVisitor