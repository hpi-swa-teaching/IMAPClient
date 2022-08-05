folderIcon
testEmptyIcon

	| subFolder |
	subFolder := ICFolder named: 'subfolder' in: self root with: self helper endPoint of: #Generic.
	self assert: subFolder iconName equals: #none