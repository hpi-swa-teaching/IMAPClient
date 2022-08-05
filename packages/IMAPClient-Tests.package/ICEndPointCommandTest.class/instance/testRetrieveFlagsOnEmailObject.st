logout
testRetrieveFlagsOnEmailObject

	| folder mailA mailB emailObjects |
	emailObjects := self setUpRetieveFlagsTests.
	mailA := emailObjects first.
	mailB := emailObjects second.
	folder := mailA folder.
	
	self endPoint retrieveFlagsFrom: 3 to: 4 in: folder.
	
	self assert: mailA seen equals: false.
	self assert: mailA flagged equals: true.
	self assert: mailA deleted equals: false.
	self assert: mailB seen equals: false.
	self assert: mailB flagged equals: true.
	self assert: mailB deleted equals: false.
	
	FileDirectory default
		deleteFileNamed: (FileDirectory default fullPathFor: self path, FileDirectory slash, mailA id);
		deleteFileNamed: (FileDirectory default fullPathFor: self path, FileDirectory slash, mailB id).