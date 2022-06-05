toolbuilder
sortByMailButtonLabel

	self sortMethod = #mail
		ifTrue: [self sortedReversed
			ifTrue: [ ^'Mail (desc)'.]
			ifFalse: [^'Mail (asc)'.]]
		ifFalse: [^'Mail']