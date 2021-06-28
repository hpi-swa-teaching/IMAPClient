as yet unclassified
addMail: anEmail forAccount: anAccount
	
	|key|
	key := {anAccount accountName, anEmail folder folderName}.
	(self at: key ifAbsent: [self at: key put: (Set newFrom: {anEmail})]) add: anEmail