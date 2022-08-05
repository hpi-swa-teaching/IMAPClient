accessing - account
labelForAccount: anICEndPoint

	| countOfUnseenMails |
	countOfUnseenMails := anICEndPoint rootFolder numberOfUnseenMails.
	countOfUnseenMails > 0
		ifTrue: [^ anICEndPoint accountInfo accountName, Character tab, '[', countOfUnseenMails asString, ']']
		ifFalse: [^ anICEndPoint accountInfo accountName, Character tab, '']