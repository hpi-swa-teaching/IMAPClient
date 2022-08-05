toolbuilder
sortByNameButtonLabel

	self sortingMethod = #name
		ifTrue: [self sortedReversed ifTrue: [^ 'Name (desc)'] ifFalse: [^ 'Name (asc)']]
		ifFalse: [^ 'Name']