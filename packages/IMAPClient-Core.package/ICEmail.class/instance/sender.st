accessing-header
sender

	| fromCollection |
	fromCollection := self from findBetweenSubStrs: self class senderAddressDelimeters.
	^ (fromCollection at: 2 ifAbsent: [fromCollection at: 1 ifAbsent: [ '' ]])