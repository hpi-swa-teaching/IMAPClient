testing
testVCopyInput

	|filter anEvent|
	
	filter := ICDoNotCopyFilter new.
	anEvent := self keystroke: 0.
	anEvent := self keystroke: 99.
	"TODO: how send a Command Key at first?" 
	anEvent := filter filterEvent: anEvent for: nil.
	self assert: anEvent wasIgnored equals: true.