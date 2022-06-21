accessing - folder
labelForFolder: anICFolder

	| countOfUnseenMails |
	countOfUnseenMails := anICFolder numberOfUnseenMails.
	countOfUnseenMails > 0
		ifTrue: [^ anICFolder folderName, Character tab, '[', countOfUnseenMails asString, ']']
		ifFalse: [^ anICFolder folderName, Character tab, '']