countFolders
testCountFolders

	| subfolder1 subfolder2 subfolder3 |
	
	subfolder1 := ICFolder named: 'subfolder1' in: self root with: self endpoint.
	subfolder2 := ICFolder named: 'subfolder2' in: subfolder1 with: self endpoint.
	subfolder3 := ICFolder named: 'subfolder3' in: subfolder2 with: self endpoint.
	
	self assert: subfolder1 countFolders equals: 2.
	self assert: subfolder2 countFolders equals: 1.
	self assert: subfolder3 countFolders equals: 0