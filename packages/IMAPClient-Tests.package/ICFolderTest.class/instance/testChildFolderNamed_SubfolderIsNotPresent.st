childFolderNamed
testChildFolderNamed_SubfolderIsNotPresent
	
	| subfolder1 subfolder2 |
	subfolder1 := ICFolder named: 'subfolder' in: self root.
	subfolder2 := ICFolder named: 'subfolder2' in: subfolder1.
	
	self should: [ subfolder1 childFolderNamed: 'subfolder3' ] raise: Error
	