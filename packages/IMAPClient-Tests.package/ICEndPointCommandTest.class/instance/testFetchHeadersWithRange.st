fetch
testFetchHeadersWithRange

	|path emailObjects|
	
	emailObjects := self endPoint fetchHeadersFrom: 6 to: 7.
	path := #('Maildir' 'unknown' 'inbox') asOrderedCollection joinSeparatedBy: (FileDirectory slash).
	
	self
		assert: emailObjects size equals: 2;
		assert: (emailObjects collect: [ :each | each header ]) equals: self class expectedFetchHeadersWithRange;
		assert: (FileDirectory default directoryExists: (FileDirectory default fullPathFor: path));
		assert: (FileDirectory default fileExists: (FileDirectory default fullPathFor: path), FileDirectory slash, '1');	
		assert: (FileDirectory default fileExists: (FileDirectory default fullPathFor: path), FileDirectory slash, '2').