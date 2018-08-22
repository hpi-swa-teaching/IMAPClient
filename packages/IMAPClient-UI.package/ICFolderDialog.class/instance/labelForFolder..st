folder selection
labelForFolder: anICFolder

	| countOfUnseenMails |
	
	countOfUnseenMails := anICFolder numOfUnseenMails.
	countOfUnseenMails > 0
		ifTrue: [^ anICFolder name, Character tab, '[', countOfUnseenMails asString, ']']
		ifFalse: [^ anICFolder name, Character tab, '']