removeFolder
testRemoveFolder_FolderExists

	| subfolder1 subfolder2 subfolder3|
	subfolder1 := ICFolder named: 'subfolder1' in: self root.
	subfolder2 := ICFolder named: 'subfolder2' in: subfolder1.
	subfolder3 := ICFolder named: 'subfolder3' in: subfolder2.
	
	subfolder2 removeFolder: subfolder3.
	
	self assert: (subfolder2 childFolders includes: subfolder3) equals: false.
	self assert: subfolder3 parent equals: subfolder3