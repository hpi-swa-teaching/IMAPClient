folderIcon
testEmptyIcon

	| subFolder |
	subFolder := ICFolder named: 'subfolder' in: self root with: self helper endpoint of: #Generic.
	self assert: subFolder iconName equals: #none