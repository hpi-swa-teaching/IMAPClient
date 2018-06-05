fetch
testFetchHeadersWithRange
	
	|path emailObjects mailAPath mailBPath|
	
	"ToDo: Add an test if the Objects are already present in Storage and they need to be loaded from ICFolder"
	
	emailObjects := self endPoint fetchHeadersFrom: 6 to: 7.
	path := #('Maildir' 'unknown' 'inbox') asOrderedCollection joinSeparatedBy: (FileDirectory slash).
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