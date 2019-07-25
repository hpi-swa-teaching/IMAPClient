setup
tearDown

	| mailAPath mailBPath path folderName |
	
	folderName := ICHelper hashNameForAccount: (self endPoint serverInfo host) and: (self endPoint authenticationInfo username).	
		
	path := 'Maildir', FileDirectory slash, folderName, FileDirectory slash, 'inbox'.
	mailAPath := FileDirectory default fullPathFor: path , FileDirectory slash, '3' .
	mailBPath := FileDirectory default fullPathFor: path , FileDirectory slash, '4' .
	
	FileDirectory default
		deleteFileNamed: mailAPath;
		deleteFileNamed: mailBPath