removeFolder
testRemoveFolder

	| subfolder1 subfolder2 subfolder3 |
	
	subfolder1 := ICFolder named: 'subfolder1' in: self root with: self endpoint.
	subfolder2 := ICFolder named: 'subfolder2' in: subfolder1 with: self endpoint.
	subfolder3 := ICFolder named: 'subfolder3' in: subfolder2 with: self endpoint.
	
	subfolder2 removeFolder: subfolder3.
	
	self assert: (subfolder2 childFolders includes: subfolder3) equals: false.
	self assert: subfolder3 parent equals: subfolder3