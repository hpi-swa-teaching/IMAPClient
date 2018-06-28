email selection
deleteEmail
	(selectedEmail retrieveFlags at: #deleted)
		ifTrue: [selectedEmail expungeEmails]
		ifFalse: [selectedEmail deleteEmail].
	self changed: #emailsOfSelectedFolder