as yet unclassified
filterEvent: anEvent for: aMorph

	anEvent isKeystroke ifFalse: [^ anEvent].
	anEvent commandKeyPressed ifTrue: [anEvent ignore].

	^ anEvent