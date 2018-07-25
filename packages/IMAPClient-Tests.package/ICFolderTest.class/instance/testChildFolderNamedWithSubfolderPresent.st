childFolderNamed
testChildFolderNamedWithSubfolderPresent
	
	| subfolder1 subfolder2 result |
	
	subfolder1 := ICFolder named: 'subfolder' in: self root.
	subfolder2 := ICFolder named: 'subfolder2' in: subfolder1.
	
	result := subfolder1 childFolderNamed: 'subfolder2'. 
	self assert: result equals: subfolder2