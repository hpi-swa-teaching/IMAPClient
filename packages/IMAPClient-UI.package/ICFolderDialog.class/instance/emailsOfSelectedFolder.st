folder selection
emailsOfSelectedFolder

	| emails |
	self selectedFolder ifNil: [^ OrderedCollection new].
	emails := self selectedFolder emails.
	
	emails ifEmpty: [^ emails].
	
	self filterString notEmpty
		ifTrue: [^ emails select: [:anICEmail |
					(self labelForMail: anICEmail) includesSubstring: self filterString caseSensitive: false]].
	(emails last == (ICLoadOlderMail instanceFor: self))
		ifFalse: [emails add: (ICLoadOlderMail instanceFor: self)].
		
	^ emails