folder selection
emailsOfSelectedFolder

	| emails |
	
	self selectedFolder ifNil: [^ OrderedCollection new].
	emails := self selectedFolder emails.
	
	emails ifEmpty: [^ emails].
	(emails last == (ICLoadOlderMail instanceFor: self))
		ifFalse: [emails add: (ICLoadOlderMail instanceFor: self)].
		
	^ emails