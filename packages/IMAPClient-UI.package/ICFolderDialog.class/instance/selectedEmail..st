accessing
selectedEmail: anObject

	(anObject == self selectedEmail) ifTrue: [ self openEmail: anObject ].
	selectedEmail := anObject.
	self changed: #selectedEmail