io
deleteAccountFolder

	| filePath folder filedirectory |
	filePath:=   'Maildir'.
	folder := self endpoint rootDirectoryName.
	
	filedirectory :=FileDirectory new.
	filedirectory setPathName:  (FileDirectory default / filePath ) pathName.
	"filedirectory deleteDirectory: folder"