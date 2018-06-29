email selection
deleteEmail

	(selectedEmail retrieveFlags at: #deleted)
		ifTrue: [selectedEmail expungeEmails]
		ifFalse: [selectedEmail deleteEmail].
		
	self selectedEmail: nil.
	self changed: #emailsOfSelectedFolder.
	
