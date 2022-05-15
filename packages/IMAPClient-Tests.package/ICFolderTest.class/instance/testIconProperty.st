folderIcon
testIconProperty
	
	| subFolder|
	
	subFolder := ICFolder named: 'subfolder' in: self root with: self endpoint.
	subFolder iconName: #inboxIcon.
	self assert: subFolder iconName equals: #inboxIcon.
	