testing
testXCopyInput

	|filter anEvent|
	
	filter := ICDoNotCopyFilter new.
	anEvent := KeyboardEvent new.
	anEvent keyValue: 120.
	anEvent wasIgnored: false.
	anEvent := filter filterEvent: anEvent for: nil.
	self assert: anEvent wasIgnored equals: true.