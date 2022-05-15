folderIcon
testEmptyIcon
	
	| subFolder|
	
	subFolder := ICFolder named: 'subfolder' in: self root with: self endpoint.
	self assert: subFolder iconName equals: #none.
	