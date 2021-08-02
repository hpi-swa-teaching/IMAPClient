emailInFolder
testEmailInFolder

	| folder firstMail |
	
	folder := ICFolder named: 'folder' in: self root with: self endpoint.
	folder emails: {self mailIn: folder}.	
	firstMail := folder emails first.
	
	self assert: firstMail folder path equals: folder path