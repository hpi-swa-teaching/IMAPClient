addFolder
testAddFolder
	
	| subfolder1 subfolder2 subfolder3|
	subfolder1 := ICFolder named: 'subfolder' in: self root.
	self assert: self root childFolders size equals: 1.
	self assert: self root countFolders equals: 1.
	
	subfolder2 := ICFolder named: 'subfolder' in: subfolder1.
	self assert: self root childFolders size equals: 1.
	self assert: self root countFolders equals: 2.
	
	subfolder3 := ICFolder named: 'subfolder' in: subfolder1.
	self assert: self root childFolders size equals: 1.
	self assert: self root countFolders equals: 3.
	self assert: subfolder1 countFolders equals: 2