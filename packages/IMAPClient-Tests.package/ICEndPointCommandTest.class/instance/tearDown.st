setup
tearDown

	| mailAPath mailBPath path folderName |
	
	folderName := self endPoint rootFolderName.	
		
	path := 'Maildir', FileDirectory slash, folderName, FileDirectory slash, 'inbox'.
	mailAPath := FileDirectory default fullPathFor: path , FileDirectory slash, '3' .
	mailBPath := FileDirectory default fullPathFor: path , FileDirectory slash, '4' .
	
	FileDirectory default
		deleteFileNamed: mailAPath;
		deleteFileNamed: mailBPath