read file
syncFromDisk

	|allOldEmails|
	
	allOldEmails:= self endpoint collectAllEmails.
	"alle emaillisten auch in Subordnern löschen"
	
	
	"self rootDirectory
		assureExistence;
		withAllFilesDo: self fileVisitor andDirectoriesDo: self directoryVisitor"