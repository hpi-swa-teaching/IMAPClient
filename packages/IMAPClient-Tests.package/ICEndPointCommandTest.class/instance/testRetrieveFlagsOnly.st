logout
testRetrieveFlagsOnly

	| folder mailA mailB emailObjects folderName mailAPath mailBPath path mockResponse readWriter |
	
	" load emails from server and store them locally "
				
	emailObjects := self endPoint fetchHeadersFrom: 6 to: 7.
	mailA := emailObjects first.
	mailB := emailObjects second.
	
	folder := emailObjects first folder.
	folder emails addAll: emailObjects.
	
	folderName := ICHelper getHashNameForAccount: (self endPoint serverInfo host) and: (self endPoint authenticationInfo username).
	path := 'Maildir', FileDirectory slash, folderName, FileDirectory slash, 'inbox'.
	mailAPath := FileDirectory default fullPathFor: path , FileDirectory slash, '3' .
	mailBPath := FileDirectory default fullPathFor: path , FileDirectory slash, '4' .
	
	" asserts that in the beginning the flags equal this "
	self assert: mailA seen equals: true.
	self assert: mailA flagged equals: false.
	self assert: mailB seen equals: true.
	self assert: mailB flagged equals: false.
	
	" add the respose, which is needed by retrieveFlags to the MockServer "
	mockResponse := OrderedCollection newFrom: {
		 '* 1 FLAGS( \Flagged) UID 3'.
		 '* 2 FLAGS( \Flagged) UID 4'.
		'. OK FETCH completed.' }.
	
	self endPoint stream server responses at: '. UID FETCH 3:4 (FLAGS)' put: mockResponse.
	self endPoint retrieveFlagsFrom: 3 to: 4 in: folder.
	
	" asserts that the flags - in the mail object - were updated "
	self assert: mailA seen equals: false.
	self assert: mailA flagged equals: true.
	self assert: mailB seen equals: false.
	self assert: mailB flagged equals: true.
	
	" asserts that the flags - in the maildir storage file - were also updated "
	
	readWriter := ICFileReadWriter new.
	mailA := readWriter get: '3' in: path.
	mailB := readWriter get: '4' in: path.
	
	self assert: mailA seen equals: false.
	self assert: mailA flagged equals: true.
	self assert: mailB seen equals: false.
	self assert: mailB flagged equals: true.
	
	" Delete generated files "
	FileDirectory default
		deleteFileNamed: mailAPath;
		deleteFileNamed: mailBPath. 