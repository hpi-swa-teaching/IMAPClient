accessing
selectedEmail: anObject

	((anObject == self selectedEmail) and: anObject isNil not) 
		ifTrue: [
			self openEmail: anObject].
	
	selectedEmail := anObject.
	self changed: #selectedEmail