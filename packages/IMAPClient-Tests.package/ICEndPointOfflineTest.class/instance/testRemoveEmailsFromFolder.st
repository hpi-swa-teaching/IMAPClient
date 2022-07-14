testing
testRemoveEmailsFromFolder

	| numberOfEmails folder |
	
	numberOfEmails := 5.
	folder := self helper createAFolder: 'removeMails'.
	
	self helper createNumberOfEmails: numberOfEmails in: folder.
	folder moveEmailsToTrash.
	
	self assert: folder emails isEmpty.
	self assert: self trashFolder emails size equals: numberOfEmails.
	 


