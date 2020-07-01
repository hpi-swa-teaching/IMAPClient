accessing-header
sender

	| fromCollection |
	fromCollection := self from findBetweenSubStrs: '<>'.
	^(fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: ['']]).