action
sortContactsBy: aMethod

	self sortingMethod = aMethod ifTrue: [self reverseContacts] ifFalse: [
		self sortingMethod: aMethod.
		self addressBook sort: (self sortingBlocks at: aMethod).
		self sortedReversed: false].
	self changed: #addressBook