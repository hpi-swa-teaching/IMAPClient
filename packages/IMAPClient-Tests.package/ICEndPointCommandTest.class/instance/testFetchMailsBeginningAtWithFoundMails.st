fetch
testFetchMailsBeginningAtWithFoundMails

	"the uids of the mock server are 3 4 42 43 44 45 46
	 so fetchMailsBeginningAt:42 with 2 should return mails 3+4"
	
	| path emailObjects mailAPath mailBPath folderName |
		
	emailObjects := self endPoint fetchMailsBeginningAt: 42 number: 2. 
	folderName := ICHelper hashNameForAccount: (self endPoint accountInfo host) and: (self endPoint accountInfo username).	
	path := 'Maildir', FileDirectory slash, folderName, FileDirectory slash, 'inbox'.
	mailAPath := FileDirectory default fullPathFor: path , FileDirectory slash, '3' .
	mailBPath := FileDirectory default fullPathFor: path , FileDirectory slash, '4' .

	self
		assert: emailObjects size equals: 2;
		assert: (emailObjects collect: [ :each | each header ]) equals: self class expectedFetchMailsBeginningAt;
		assert: (FileDirectory default directoryExists: (FileDirectory default fullPathFor: path));
		assert: (FileDirectory default fileExists: (mailAPath));	
		assert: (FileDirectory default fileExists: (mailBPath)).
		
	"Delete generated files"
	FileDirectory default
		deleteFileNamed: mailAPath;
		deleteFileNamed: mailBPath. 
		
	self
		assert: (FileDirectory default fileExists: (mailAPath)) equals: false;	
		assert: (FileDirectory default fileExists: (mailBPath)) equals: false