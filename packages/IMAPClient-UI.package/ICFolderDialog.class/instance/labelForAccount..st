email selection
labelForAccount: anICEndpoint

	| countOfUnseenMails |
	
	countOfUnseenMails := anICEndpoint rootFolder numOfUnseenMails.
	countOfUnseenMails > 0
		ifTrue: [^ anICEndpoint name, Character tab, '[' , countOfUnseenMails asString, ']']
		ifFalse: [^ anICEndpoint name, Character tab, '']