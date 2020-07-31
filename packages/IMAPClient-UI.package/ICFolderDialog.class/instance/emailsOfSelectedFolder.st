folder selection
emailsOfSelectedFolder

	| emails |
	
	self selectedFolder ifNil: [^ OrderedCollection new].
	emails := self selectedFolder emails copy.
	
	emails ifEmpty: [^ emails].
	
	emails sort: (self sortBlocks at: self sortMethod).
	self reverseMails ifTrue: [emails reverseInPlace].
	
	^ emails select: [:anICEmail |
					self shouldEmailBeVisible: anICEmail]