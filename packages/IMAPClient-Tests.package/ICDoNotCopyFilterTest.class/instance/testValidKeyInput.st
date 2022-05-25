testing
testValidKeyInput

	|filter anEvent|
	
	filter := ICDoNotCopyFilter new.
	anEvent := KeyboardEvent new.
	anEvent keyValue: 7.
	anEvent := filter filterEvent: anEvent for: nil.
	self assert: anEvent wasIgnored equals: false.