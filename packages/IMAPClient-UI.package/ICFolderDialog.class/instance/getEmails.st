get emails
getEmails

	self selectedFolder
		ifNotNil: [ self 
					chooseNumberOfMails; 
					startFetchHeaderProcess ]