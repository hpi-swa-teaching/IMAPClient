toolbuilder
sortByMailButtonLabel

	self sortingMethod = #mail
		ifTrue: [self sortedReversed ifTrue: [^ 'Mail (desc)'] ifFalse: [^ 'Mail (asc)']]
		ifFalse: [^ 'Mail']