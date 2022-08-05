emailInFolder
testEmailInFolder

	| folder firstMail |
	folder := ICFolder named: 'folder' in: self root with: self helper endpoint of: #Generic.
	self helper createAnEmail: folder.
	firstMail := folder emails first.
	
	self assert: firstMail folder path equals: folder path