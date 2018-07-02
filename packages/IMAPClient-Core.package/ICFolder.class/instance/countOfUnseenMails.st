accessing
countOfUnseenMails

	^ countOfUnseenMails ifNil: [countOfUnseenMails := 0]