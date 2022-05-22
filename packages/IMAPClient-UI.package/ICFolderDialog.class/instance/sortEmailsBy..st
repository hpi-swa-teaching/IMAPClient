action - sorting/filter
sortEmailsBy: aSymbol
	(self sortMethod = aSymbol)
		ifTrue: [self toggleReverseMails]
		ifFalse: [
			self sortMethod: aSymbol.
			self reverseMails: false].
	self changed: #emailsOfSelectedFolder