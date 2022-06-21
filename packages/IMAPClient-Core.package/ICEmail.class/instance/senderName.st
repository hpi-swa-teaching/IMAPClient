accessing-header
senderName

	| fromCollection |
	fromCollection := self from findBetweenSubStrs: self class senderAddressDelimeters.
	^ ((fromCollection at: 1 ifAbsent: ['']) subStrings: '"') first