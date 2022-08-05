accessing - account
labelForAccount: anICEndpoint

	| countOfUnseenMails |
	countOfUnseenMails := anICEndpoint rootFolder numberOfUnseenMails.
	countOfUnseenMails > 0
		ifTrue: [^ anICEndpoint accountInfo accountName, Character tab, '[', countOfUnseenMails asString, ']']
		ifFalse: [^ anICEndpoint accountInfo accountName, Character tab, '']