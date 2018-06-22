email selection
deleteEmail
	(self retrieveFlags at: #deleted)
		ifTrue: [selectedEmail expungeEmails]
		ifFalse: [selectedEmail deleteEmail].
	self changed: #emailsOfSelectedFolder