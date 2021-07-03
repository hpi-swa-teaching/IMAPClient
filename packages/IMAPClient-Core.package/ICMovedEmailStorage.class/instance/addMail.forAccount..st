mailHandling
addMail: anEmail forAccount: anAccount
	
	(self movedMailsForAccount: anAccount accountName andFolder: anEmail folder) add: anEmail