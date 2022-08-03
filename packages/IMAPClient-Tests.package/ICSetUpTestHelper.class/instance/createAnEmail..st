accessing
createAnEmail: anICFolder

	| mail |
	mail := self class getMailObjectWith: self currentMailID in: anICFolder.
	anICFolder addMail: mail.
	self writeEmailOnDisk: mail.
	
	^ mail