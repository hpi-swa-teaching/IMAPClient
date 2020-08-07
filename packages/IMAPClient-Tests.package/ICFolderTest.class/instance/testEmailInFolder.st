emailInFolder
testEmailInFolder

	| folder |
	
	folder := ICFolder named: 'folder' in: self root with: self endpoint.
	folder emails: {self exampleEmailIn: folder}.	
	
	self assert: folder emails first folder path = folder path