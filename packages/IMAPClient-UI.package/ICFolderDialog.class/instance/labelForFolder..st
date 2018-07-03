folder selection
labelForFolder: anICFolder

	| countOfUnseenMails |
	countOfUnseenMails := anICFolder countOfUnseenMails.
	countOfUnseenMails > 0
		ifTrue: [^ anICFolder name , Character tab , '[' , countOfUnseenMails asString , ']']
		ifFalse: [^ anICFolder name , Character tab , '']