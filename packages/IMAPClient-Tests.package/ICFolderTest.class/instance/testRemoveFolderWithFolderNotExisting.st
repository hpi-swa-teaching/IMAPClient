removeFolder
testRemoveFolderWithFolderNotExisting

	| subfolder1 subfolder2 |
	
	subfolder1 := ICFolder named: 'subfolder1' in: self root with: self endpoint.
	subfolder2 := ICFolder named: 'subfolder2' in: self root with: self endpoint.
	
	self should: [subfolder1 removeFolder: subfolder2] raise: Error