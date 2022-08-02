protocol handling - move
addMail: anEmail to: aFolder

	anEmail folder: aFolder.
	self movedMailStorage addMail: anEmail forAccount: self accountInfo.
	aFolder addMails: {anEmail}