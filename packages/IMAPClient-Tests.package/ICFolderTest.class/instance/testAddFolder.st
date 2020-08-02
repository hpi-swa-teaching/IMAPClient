addFolder
testAddFolder
	
	| subfolder1 |
	
	subfolder1 := ICFolder named: 'subfolder' in: self root with: self endpoint.
	self assert: self root childFolders size equals: 1.
	self assert: self root countFolders equals: 1.
	
	ICFolder named: 'subfolder' in: subfolder1 with: self endpoint.
	self assert: self root childFolders size equals: 1.
	self assert: self root countFolders equals: 2.
	
	ICFolder named: 'subfolder' in: subfolder1 with: self endpoint.
	self assert: self root childFolders size equals: 1.
	self assert: self root countFolders equals: 3.
	self assert: subfolder1 countFolders equals: 2