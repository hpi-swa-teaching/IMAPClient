countFolders
testCountFolders

	| subfolder1 subfolder2 subfolder3 |
	subfolder1 := ICFolder named: 'subfolder1' in: self root with: self helper endPoint of: #Generic.
	subfolder2 := ICFolder named: 'subfolder2' in: subfolder1 with: self helper endPoint of: #Generic.
	subfolder3 := ICFolder named: 'subfolder3' in: subfolder2 with: self helper endPoint of: #Generic.
	
	self assert: subfolder1 countFolders equals: 2.
	self assert: subfolder2 countFolders equals: 1.
	self assert: subfolder3 countFolders equals: 0