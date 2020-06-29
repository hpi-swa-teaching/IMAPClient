toolbuilder
sortEmailsByDate
	(self sortMethod = #date)
		ifTrue: [self toggleReverseMails]
		ifFalse: [
			self sortMethod: #date.
			self reverseMails: false].
	self changed: #emailsOfSelectedFolder