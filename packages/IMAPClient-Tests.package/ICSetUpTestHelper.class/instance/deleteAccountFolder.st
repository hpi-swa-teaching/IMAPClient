io
deleteAccountFolder

	| filePath folder |
	folder := self endpoint rootDirectoryName.
	filePath := FileDirectory default /   'Maildir' / folder.
	filePath assureExistence.
	(FileDirectory new)
		setPathName:  filePath pathName;
		recursiveDelete