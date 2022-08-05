logout
testRetrieveFlagsConsitency

	| mailA mailB emailObjects mailAPath mailBPath mailAonDisk mailBonDisk |
	emailObjects := self setUpRetieveFlagsTests.
	mailA := emailObjects first.
	mailB := emailObjects second.
	
	self endPoint retrieveFlagsFrom: 3 to: 4 in: mailA folder.
	
	mailAPath := FileDirectory default fullPathFor: self path, FileDirectory slash, mailA id.
	mailBPath := FileDirectory default fullPathFor: self path, FileDirectory slash, mailB id.
	mailAonDisk := ICEmail newFromJsonStream: (FileStream readOnlyFileNamed: mailAPath).
	mailBonDisk := ICEmail newFromJsonStream: (FileStream readOnlyFileNamed: mailBPath).
	
	self assert: mailA seen equals: mailAonDisk seen.
	self assert: mailA flagged equals: mailAonDisk flagged.
	self assert: mailA deleted equals: mailAonDisk deleted.
	self assert: mailB seen equals: mailBonDisk seen.
	self assert: mailB flagged equals: mailBonDisk flagged.
	self assert: mailB deleted equals: mailBonDisk deleted.
	
	FileDirectory default
		deleteFileNamed: mailAPath;
		deleteFileNamed: mailBPath