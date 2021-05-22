accessing-header
senderName

	| fromCollection |
	fromCollection := self from findBetweenSubStrs: '<>'.
	^ (fromCollection at: 1 ifAbsent: [ '' ])