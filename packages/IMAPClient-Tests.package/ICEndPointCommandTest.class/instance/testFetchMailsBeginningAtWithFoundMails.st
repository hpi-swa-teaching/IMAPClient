fetch
testFetchMailsBeginningAtWithFoundMails

	| path emailObjects mailAPath mailBPath |
	emailObjects := self endPoint fetchMailsBeginningAt: 42 number: 2.
		
	self assert: emailObjects size equals: 2.
	self inboxFolder save: emailObjects inReferenceTo: OrderedCollection new.
	self inboxFolder removeOutdated: self inboxFolder emails basedOn: emailObjects.
	
	path :=self helper endpoint maildirFileName: self inboxFolder folderName.
	mailAPath := FileDirectory default fullPathFor: path, FileDirectory slash, emailObjects first id.
	mailBPath := FileDirectory default fullPathFor: path, FileDirectory slash, emailObjects second id.
	
	self
		assert: (emailObjects collect: [:each | each header])
			equals: self class expectedFetchMailsBeginningAt;
		assert: (FileDirectory default directoryExists: (FileDirectory default fullPathFor: path));
		assert: (FileDirectory default fileExists: mailAPath);
		assert: (FileDirectory default fileExists: mailBPath).
	
	FileDirectory default
		deleteFileNamed: mailAPath;
		deleteFileNamed: mailBPath.
	
	self
		assert: (FileDirectory default fileExists: mailAPath) equals: false;
		assert: (FileDirectory default fileExists: mailBPath) equals: false