toolbuilder
sortEmailsBySubject
	(self sortMethod = #subject)
		ifTrue: [self toggleReverseMails]
		ifFalse: [
			self sortMethod: #subject.
			self reverseMails: false].
	self changed: #emailsOfSelectedFolder