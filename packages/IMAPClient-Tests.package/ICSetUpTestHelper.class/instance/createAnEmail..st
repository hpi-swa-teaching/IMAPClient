accessing
createAnEmail: anICFolder
	
	| mail |
	mail := self class getMailObjectWith: (self currentMailID) in: anICFolder.
	mail folder: anICFolder.
	anICFolder addMails: {mail}.
	self writeEmailOnDisk: mail.
	
	^ mail
	