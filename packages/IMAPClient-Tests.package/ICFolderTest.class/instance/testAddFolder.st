addFolder
testAddFolder

	| subFolder |
	subFolder := ICFolder named: 'subfolder' in: self root with: self endpoint of: #Generic.
	self assert: self root childFolders size equals: 1.
	self assert: self root countFolders equals: 1.
	
	ICFolder named: 'subfolder' in: subFolder with: self endpoint of: #Generic.
	self assert: self root childFolders size equals: 1.
	self assert: self root countFolders equals: 2.
	
	ICFolder named: 'subfolder' in: subFolder with: self endpoint of: #Generic.
	self assert: self root childFolders size equals: 1.
	self assert: self root countFolders equals: 3.
	self assert: subFolder countFolders equals: 2