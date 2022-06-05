emptyFolder
testMoveMailsFromFolderToFolder

	| subfolder1 subfolder2 numberOfEmails |
	
	numberOfEmails := 5.
	subfolder1 := ICFolder named: 'subfolder 1' in: self  root with: self endpoint of: #Generic.
	subfolder2 :=  ICFolder named: 'subfolder 2' in: self root with: self endpoint of: #Genermail.
	
	subfolder1 addMails: (self getNumberOfEmails: numberOfEmails in: subfolder1).
	
	[subfolder1 emails isEmpty] whileFalse:
		[self endpoint moveEmail: subfolder1 emails first to: subfolder2 folderName].
	
	self assert: subfolder1 emails isEmpty.
	self assert: subfolder2 emails size equals: numberOfEmails.
	 


