toolbuilder
iconFor: aFolder

	aFolder iconName == #none
		ifFalse: [^ self scaleIconFitting: (self class perform: aFolder iconName)]
		ifTrue: [^ nil]