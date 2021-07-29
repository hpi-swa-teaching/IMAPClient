addFolder
testParent
	
	| subFolder |
	
	subFolder := ICFolder named: 'subfolder' in: self root with: self endpoint.
	self assert: self root path equals: subFolder parentPath.
	self assert: self root equals: subFolder parent