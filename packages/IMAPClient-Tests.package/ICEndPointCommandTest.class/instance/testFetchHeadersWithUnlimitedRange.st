fetch
testFetchHeadersWithUnlimitedRange

	| emailObjects mailAPath mailBPath path folderName |

	emailObjects := self endPoint fetchHeadersFrom: 6 to: '*'.
	folderName := ICHelper getHashNameForAccount: (self endPoint serverInfo host) and: (self endPoint authenticationInfo username).	
	path := 'Maildir', FileDirectory slash, folderName, FileDirectory slash, 'inbox'.
	mailAPath := FileDirectory default fullPathFor: path , FileDirectory slash, '3' .
	mailBPath := FileDirectory default fullPathFor: path , FileDirectory slash, '4' .
	
	self
		assert: emailObjects size equals: 2;
		assert: (emailObjects collect: [ :each | each header ]) equals: self class expectedFetchHeadersWithRange;
		assert: (FileDirectory default directoryExists: (FileDirectory default fullPathFor: path));
		assert: (FileDirectory default fileExists: (mailAPath));	
		assert: (FileDirectory default fileExists: (mailBPath)).
		
	"Delete generated files"
	FileDirectory default
		deleteFileNamed: mailAPath;
		deleteFileNamed: mailBPath. 
		
	self
		assert: (FileDirectory default fileExists: (mailAPath)) equals: false ;	
		assert: (FileDirectory default fileExists: (mailBPath)) equals: false.