accessing - folder
emailsOfSelectedFolder

	| emails |
	self selectedFolder ifNil: [^ OrderedCollection new].
	emails := self selectedFolder emails copy.
	emails ifEmpty: [^ emails].
	emails sort: (self sortingBlocks at: self sortingMethod).
	self reverseMails ifTrue: [emails reverseInPlace].
	^ emails select: [:anICEmail | self shouldEmailBeVisible: anICEmail]