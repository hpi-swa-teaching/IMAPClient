testing
testVCopyInput

	| filter anEvent |
	filter := ICDoNotCopyFilter new.
	anEvent := self keystroke: 0.
	anEvent := self keystroke: 99.
	anEvent := filter filterEvent: anEvent for: nil
	"TODO: how to send a commandKey push"
	"self assert: anEvent wasIgnored equals: true."