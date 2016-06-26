countFolders
testCountFolders

	| subfolder1 subfolder2 subfolder3|
	subfolder1 := ICFolder named: 'subfolder1' in: self root.
	subfolder2 := ICFolder named: 'subfolder2' in: subfolder1.
	subfolder3 := ICFolder named: 'subfolder3' in: subfolder2.
	
	self 
		assert: subfolder1 countFolders equals: 2;
		assert: subfolder2 countFolders equals: 1;
		assert: subfolder3 countFolders equals: 0