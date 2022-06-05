emptyFolder
testRemoveEmailsFromFolder

	| subfolder trashFolder numberOfEmails |
	
	numberOfEmails := 5.
	subfolder := ICFolder named: 'subfolder' in: self  root with: self endpoint of: #Generic.
	trashFolder :=  ICFolder named: 'trash' in: self root with: self endpoint of: #Trash.
	self endpoint folderNameOfTrash: trashFolder folderName.
	
	subfolder addMails: (self getNumberOfEmails: numberOfEmails in: subfolder).
	 
	subfolder moveEmailsToTrash.
	
	self assert: subfolder emails isEmpty.
	self assert: trashFolder emails size equals: numberOfEmails.

