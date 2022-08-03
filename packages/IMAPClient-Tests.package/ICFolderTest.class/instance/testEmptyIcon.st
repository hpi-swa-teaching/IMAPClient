folderIcon
testEmptyIcon

	| subFolder |
	subFolder := ICFolder named: 'subfolder' in: self root with: self endpoint of: #Generic.
	self assert: subFolder iconName equals: #none