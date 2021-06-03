action
sortContactsBy: aMethod
	
	(self sortMethod = aMethod) ifTrue: [self reverseContacts] ifFalse: [
		self sortMethod: aMethod.
		self addressBook sort: (self sortBlocks at: aMethod)
	].
	self changed: #addressBook