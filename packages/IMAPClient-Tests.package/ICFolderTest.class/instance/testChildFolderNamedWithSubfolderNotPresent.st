childFolderNamed
testChildFolderNamedWithSubfolderNotPresent
	
	| subfolder1 subfolder2 |
	
	subfolder1 := ICFolder named: 'subfolder' in: self root.
	subfolder2 := ICFolder named: 'subfolder2' in: subfolder1.
	subfolder2 endpoint: self endpoint.
	subfolder1 endpoint: self endpoint.
	
	self should: [ subfolder1 childFolderNamed: 'subfolder3' ] raise: Error.
	self assert: subfolder2 path equals: 'subfolder.subfolder2'