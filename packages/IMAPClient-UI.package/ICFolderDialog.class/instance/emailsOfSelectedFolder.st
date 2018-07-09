folder selection
emailsOfSelectedFolder

	| emails |
	
	self selectedFolder ifNil: [^ OrderedCollection new].
	emails := self selectedFolder emails copy.
	
	emails ifEmpty: [^ emails].
	emails add: (ICLoadOlderMail instanceFor: self).
		
	^ emails