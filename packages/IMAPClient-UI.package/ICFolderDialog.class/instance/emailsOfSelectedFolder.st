folder selection
emailsOfSelectedFolder

	| emails |
	
	self selectedFolder ifNil: [^ OrderedCollection new].
	emails := self selectedFolder emails copy.
	
	emails ifEmpty: [^ emails].
	
	self filterString notEmpty
		ifTrue: [^ emails select: [:anICEmail |
					(self labelForMail: anICEmail) includesSubstring: self filterString caseSensitive: false]].
		
	^ emails