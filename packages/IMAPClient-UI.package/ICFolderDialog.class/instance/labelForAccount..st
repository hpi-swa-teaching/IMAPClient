email selection
labelForAccount: anICEndpoint

	| countOfUnseenMails |
	countOfUnseenMails := anICEndpoint rootFolder countOfUnseenMails.
	countOfUnseenMails > 0
		ifTrue: [^ anICEndpoint name , Character tab , '[' , countOfUnseenMails asString , ']']
		ifFalse: [^ anICEndpoint name , Character tab , '']