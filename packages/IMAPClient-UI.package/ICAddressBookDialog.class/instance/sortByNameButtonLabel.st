toolbuilder
sortByNameButtonLabel

	self sortMethod = #name
		ifTrue: [self sortedReversed
			ifTrue: [ ^'Name (desc)'.]
			ifFalse: [^'Name (asc)'.]]
		ifFalse: [^'Name']